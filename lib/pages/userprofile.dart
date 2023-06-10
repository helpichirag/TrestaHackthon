import 'package:flutter/material.dart';
import 'package:solnh/const.dart';
import 'package:solnh/main.dart';

import '../components/navbar.dart';



class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
   

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavBarForAll(),
          
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: height*0.1,
                    width: width*0.2,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: borderColor, width: 1),borderRadius: BorderRadius.circular(10.0)),
                        hintText: "Patient Name"
                      ),
                    ),
                  ),
                ),
          
          
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                     height: height*0.1,
                    width: width*0.2,
                        
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: borderColor, width: 1),borderRadius: BorderRadius.circular(10.0)),
                        hintText: "Age"
                      ),
                    ),
                  ),
                ),
          
          
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                     height: height*0.1,
                    width: width*0.2,
                        
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: borderColor, width: 1),borderRadius: BorderRadius.circular(10.0)),
                        hintText: "Report"
                      ),
                    ),
                  ),
                ),
          
          
          
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                     height: height*0.1,
                    width: width*0.2,
                        
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: borderColor, width: 1),borderRadius: BorderRadius.circular(10.0)),
                        hintText: "Status"
                      ),
                    ),
                  ),
                ),
          
          
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: height*0.12,
                    width: width*0.2,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: borderColor),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: ElevatedButton(onPressed: (){}, child: Text("Register Patient"))
                  ),
                )
          
          
          
          
              ],
            ),
          ),
        ),
    );
  }
}