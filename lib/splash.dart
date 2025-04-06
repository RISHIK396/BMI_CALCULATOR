import 'dart:async';

import 'package:bmi_calculator/main.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:4),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>MyHomePage(title: 'BMI',),
      ));
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      body:
        Container(
          // color: Colors.blue,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Color(0XFFcc208e),
            Color(0XFF6713d2),
            ])
          ),
          child: Center(
            child: Text("HEALTH IN HANDS",style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          ),
        )

    );
  }
}