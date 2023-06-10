import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:io';


class DashboardDataCsv extends StatefulWidget {

  @override
  _DashboardDataCsvState createState() => _DashboardDataCsvState();
}

class _DashboardDataCsvState extends State<DashboardDataCsv> {
  // List<List<dynamic>> csvData = [];


  Map<String, List<dynamic>> csvData = {};

  Future<void> readCSV() async {
    final csvString = await DefaultAssetBundle.of(context).loadString('assets/datahackblr.csv');
    final csvFile = CsvToListConverter().convert(csvString);

    final headers = csvFile[0].cast<String>();
    csvFile.removeAt(0); // Remove the header row

    setState(() {
      for (var row in csvFile) {
        for (var i = 0; i < headers.length; i++) {
          final key = headers[i];
          final value = row[i];
          if (!csvData.containsKey(key)) {
            csvData[key] = [];
          }
          csvData[key]!.add(value);
        }
      }
    });
  }


  @override
  void initState() {
    super.initState();
    readCSV();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSV Reader'),
      ),
      body:Center(
        child: Column(
      
      
          children: [
      
            Container(
              width: 100,
              height: 50,
              child: TextField(
                
                decoration: InputDecoration(hintText: "Enter Patient ID"),))
          ],
        ),
      )
      // ListView.builder(
      //   itemCount: csvData.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     final key = csvData.keys.elementAt(index);
      //     final values = csvData[key]!;
      //     return ListTile(
      //       title: Text(key),
      //       subtitle: Text(values.toString()),
      //     );
      //   },
      // ),
    );
  }
}
