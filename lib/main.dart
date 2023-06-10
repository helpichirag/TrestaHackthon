import 'package:flutter/material.dart';
import 'package:solnh/const.dart';
import 'package:get/get.dart';
import 'package:solnh/pages/dashboard.dart';
import 'package:solnh/pages/test.dart';
import 'package:solnh/pages/test2.dart';
import 'package:solnh/pages/userprofile.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(   
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          
               TextButton(onPressed: (){
                Get.to(DashboardDataCsv());
               }, child: Text("Home", style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400),)),
               TextButton(onPressed: (){
                Get.to(PatientDetailsScreen());
               }, child: Text("Search Patient",style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400))),
               TextButton(onPressed: (){}, child: Text("Check In",style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400))),
               TextButton(onPressed: (){}, child: Text("Appointmnet",style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400))),
               IconButton(onPressed: (){
                Get.to(UserProfile());      
               }, icon: Icon(Icons.person, size: 30.0, color: textColor,))
            ],),
          )
        ],
      )
    
  );
  }
}