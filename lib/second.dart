
import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  final double bmi;
  String color1;
  String text_dis;
  final int height;
  final int min_weight;
  final int max_weight;
  String diet;
  Second(this.bmi,
      this.color1,
      this.text_dis,
      this.height,
      this.min_weight,
      this.max_weight,
      this.diet); //constructor to accept BMI

  @override
    Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color(int.parse(color1)),
      appBar: AppBar(
        backgroundColor: Color(int.parse(color1)),
        title: Text("YOUR CURRENT BMI",style: TextStyle(
          fontSize: 29,
          fontWeight: FontWeight.bold,
          color: Color(0XFFD4E79E)
        ),),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("${bmi.toStringAsFixed(1)}",style: TextStyle(
                fontSize: 70,
                  color:Color(0XFFD8B4E2)
              ),),
            margin: EdgeInsets.only(left:20),
            ),
            Container(
              child: Text("BODY MASS INDEX",style:TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
              margin: EdgeInsets.only(left:30),
            ),
            Center(
              child: Container(
                child: Text("${text_dis}",style:TextStyle(
                  fontSize: 30,
                  color:Colors.white,
                  fontWeight: FontWeight.w600
                )),
                margin: EdgeInsets.only(top:50),
              ),
            ),
            Container(
              height:1,
              width:360,
              color:Color(0XFFD8B4E2),
              margin:EdgeInsets.only(top:20,left:16)
            ),
            Container(
              child: Text("ANALYSIS :",style:TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600
              )),
              margin: EdgeInsets.only(top:55,left:20)
            ),
            Container(
              width:350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("HEIGHT (cm)",style:TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                   fontWeight: FontWeight.bold
                  )),
                  Text("${height.toString()}",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white
                  ),
                  )
                ],
              ),
              margin: EdgeInsets.only(top:30,left:20),
            ),
        
            Container(
              width:350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("SUGGESTED WEIGHT (kg)",style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  )),
                  Text("${min_weight.toString()} ~ ${max_weight.toString()} ",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                  ),
                  )
                ],
              ),
              margin: EdgeInsets.only(top:30,left:20),
            ),
            Container(
              width:350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("SUGGESTED DIET :",style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  )),
                ],
              ),
              margin: EdgeInsets.only(top:30,left:20),
            ),
            Container(
              child: Text("${diet}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white
              ),
              ),
              margin: EdgeInsets.only(left:18,top:5),
            )
        
          ],
        ),
      ),
    );
  }
  }