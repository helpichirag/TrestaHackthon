import 'dart:convert';
import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  final TextEditingController uniqueIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: uniqueIdController,
              decoration: InputDecoration(
                labelText: 'Enter Unique ID',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String uniqueId = uniqueIdController.text;
                List<Patient> patients = patientFromJson(jsonDataString);

                Patient selectedPatient = patients.firstWhere(
                    (patient) => patient.uniqueId == uniqueId);
                // ignore: unnecessary_null_comparison
                if (selectedPatient != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PatientDetailsPage(patient: selectedPatient),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Patient not found.'),
                      actions: [
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Show Details'),
            ),
          ],
        ),
      ),
    );
  }
}

class PatientDetailsPage extends StatelessWidget {
  final Patient patient;

  PatientDetailsPage({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Unique ID: ${patient.uniqueId}'),
            Text('District: ${patient.district}'),
            Text('Gender: ${patient.gender}'),
          ],
        ),
      ),
    );
  }
}

class Patient {
  final String uniqueId;
  final String district;
  final String gender;

  Patient({
    required this.uniqueId,
    required this.district,
    required this.gender,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      uniqueId: json['Unique_ID'],
      district: json['District'],
      gender: json['Gender'],
    );
  }
  
  static map(Function(dynamic patient) param0) {}
  
  static toJson() {}
}

List<Patient> patientFromJson(String jsonData) {
  final List<dynamic> parsedJson = json.decode(jsonData);

  


  return List<Patient>.from(parsedJson.map((patient) => Patient.fromJson(patient)));
}

String jsonDataString = jsonEncode([Patient.toJson()]);


