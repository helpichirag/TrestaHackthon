import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solnh/const.dart';
import '../pages/userprofile.dart';



Widget NavBarForAll(){


  return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          
               TextButton(onPressed: (){}, child: Text("Home", style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400),)),
               TextButton(onPressed: (){}, child: Text("Report",style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400))),
               TextButton(onPressed: (){}, child: Text("Check In",style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400))),
               TextButton(onPressed: (){}, child: Text("Appointmnet",style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w400))),
               IconButton(onPressed: (){
                Get.to(UserProfile());      
               }, icon: Icon(Icons.person, size: 30.0, color: textColor,))
            ],),
          );
}