import 'package:csv/csv.dart';
import 'package:flutter/material.dart';

class CSVReaderWidget extends StatefulWidget {
  @override
  _CSVReaderWidgetState createState() => _CSVReaderWidgetState();
}

class _CSVReaderWidgetState extends State<CSVReaderWidget> {
  Map<String, List<dynamic>> csvData = {};
  Map<String, List<dynamic>> searchData = {}; // Updated


  TextEditingController stringsearch = TextEditingController();

  Future<void> readCSV() async {
    final csvString = await DefaultAssetBundle.of(context).loadString('assets/datahackblr.csv');
    final csvFile = CsvToListConverter().convert(csvString);

    final headers = csvFile[0].cast<String>();
    csvFile.removeAt(0); // Remove the header row

    setState(() {
      for (var row in csvFile) {
        final id = row[0]; // Assuming the unique ID is in the first column
        for (var i = 0; i < headers.length; i++) {
          final key = headers[i];
          final value = row[i];
          if (!csvData.containsKey(key)) {
            csvData[key] = [];
          }
          csvData[key]!.add(value);
        }

        if (!searchData.containsKey(id)) {
          searchData[id] = row; // Store the complete row for the ID
        }
      }
    });
  }

  void search(String id) {
    print(csvData.containsKey("ID"));
    setState(() {
      readCSV();
      if (csvData.containsKey(id)) {
        searchData[id] = csvData[id]!;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // readCSV();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSV Reader'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:.40),
            child: ListTile(
              title: TextField(
                controller: stringsearch,
                decoration: InputDecoration(
                  labelText: 'Enter Unique ID',
                ),
              ),
              trailing: IconButton(onPressed: (){
            search(stringsearch.text);
          }, icon: Icon(Icons.search)),
            ),
          ),

          


          Expanded(
            child: ListView.builder(
              itemCount: searchData.length,
              itemBuilder: (BuildContext context, int index) {
                final id = searchData.keys.elementAt(index);
                final rowData = searchData[id]!;
                return ListTile(
                  title: Text('ID: $id'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: rowData.map<Widget>((value) {
                      return Text(value.toString());
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
