import 'package:bmi_calculator/second.dart';
import 'package:bmi_calculator/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Main_Font",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var ageController = TextEditingController();
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var result = "";
  var gender="";


  @override
  Widget build(BuildContext context) {
    title:"BMI CALCULATOR";
    return Scaffold(
      backgroundColor: Color(0xFF210B2C),
      appBar: AppBar(
        backgroundColor: Color(0xFF210B2C),
        title: Center(
          child: Text("BMI CALCULATOR",style:TextStyle(
              color:Color(0xFFD4E79E),
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: "Main_Font"
          ) ,),
        ),
      ),
      body:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Container(
                     height:20,
                     child: Row(
                       mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [Text("AGE",style:TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    )
                    ),
                      Container(
                        child: Text("GENDER : ${gender}",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white
                        ),),
                        margin: EdgeInsets.only(right:20)
                      ),
                    ],
                     ),
                margin: EdgeInsets.only(left:20,top:20)
                  ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.white,
                      controller: ageController,
                      decoration: InputDecoration(
                        hintText: "ENTER AGE",
                        hintStyle: TextStyle(color: Colors.white54), // Optional: Change hint text color to a lighter white
                        prefixIcon: Icon(Icons.network_cell, color: Colors.white), // Optional: Change the icon color to white
                      ),
                      style: TextStyle(color: Colors.white), // Set the input text color to white
                      keyboardType: TextInputType.number,
                    ),
                    margin: EdgeInsets.only(left: 20,top: 10),
                  ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                          height: 60,
                          width:55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Color(0XFFD8B4E2)
                          ),
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(right:10.0),
                              child: Icon(
                                Icons.male,
                                size:40,
                                color: Color(0XFF7B1E84),
                              ),
                            ),
                            onPressed: (){
                              Color(0XF7B1E84);
                              print("BUTTON SELECTED IS MALE");
                              setState(() {
                                gender="MALE";
                              });
                            },
                          ),
                            margin: EdgeInsets.only(right:20,top:10),
                                          ),
                          Container(
                            height: 60,
                            width:55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Color(0XFFD8B4E2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right:10.0),
                              child: TextButton(
                                child: Icon(
                                  Icons.female,
                                  size:40,
                                  color: Color(0XFF7B1E84),
                                ),
                                onPressed: (){
                                  Color(0XF7B1E84);
                                  print("BUTTON SELECTED IS FEMALE");

                                  setState(() {
                                    gender="FEMALE";
                                  });
                                },
                              ),
                            ),
                            margin:EdgeInsets.only(right:20,top:10),
                          ),
                        ],
                      ),
                    ),
            
                  ],
                ),
                ),
                
                Container(
                  child:Text("HEIGHT (cm)",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  margin: EdgeInsets.only(left: 20,top:35),
                ),
            
                Container(
                  width: 350,
                    child:TextField(
                      controller: heightController,
                      decoration: InputDecoration(
                          hintText: "ENTER HEIGHT",
                          hintStyle: TextStyle(color:Colors.white54),

                          prefixIcon: Icon(Icons.height_rounded,color: Colors.white,)
                      ),
                      keyboardType: TextInputType.number,

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                    margin: EdgeInsets.only(left:20,top:20)
                ),
                Container(
                    child:Text("WEIGHT (kg)",style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                  margin: EdgeInsets.only(left:20,top:40),
                ),
            
                      Container(
                        width:350,
                          child:TextField(
                            controller: weightController,
                            decoration: InputDecoration(
                              hintText: "ENTER WEIGHT",
                                hintStyle: TextStyle(color:Colors.white54,fontSize: 15),
                                prefixIcon: Icon(Icons.width_normal,color: Colors.white)
                      
                            ),
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,
                          ),
                          margin: EdgeInsets.only(left:10,top:25)
                ),
                Container(
                  child: Text("DISCLAMER : ",style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),
                  margin: EdgeInsets.only(left:20,top:20),
                ),
                Container(
                  child:Text("BODY MASS INDEX (BMI) IS A PERSON'S WEIGHT IN KILOGRAMS DIVIDED BY THE SQUARE OF HEIGHT IN METERS. BMI IS AN EASY SCREENING METHOD FOR WEIGHT CATEGORY.",style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                  margin: EdgeInsets.only(left:20,top:7),
                ),
                Center(
                  child: Container(
                    width:300,
                    height: 50,
                    child:
                      ElevatedButton(
                          onPressed:(){
                            var age = ageController.text.toString();
                            var wt = weightController.text.toString();
                            var ht = heightController.text.toString();

                            if(wt != "" && ht!="" && age !=""){
                              var age1 = int.parse(age);
                              var height = int.parse(ht);
                              var weight = int.parse(wt);

                              var bmi = weight*100*100/(height*height);
                              var color1;
                              var text_dis;
                              var diet;
                                int min_weight = 0;
                                int max_weight = 0;

                                for (int i = 0; i <= 100; i++) {
                                  double bmi = i * 100 * 100 / (height * height);

                                  if (bmi >= 18.5 && min_weight == 0) {
                                    min_weight = i; // Assign the minimum weight when BMI reaches 18.5
                                  }

                                  if (bmi > 24.9) {
                                    max_weight = i - 1; // Assign the maximum weight just before BMI exceeds 24.9
                                    break; // Exit the loop as we found the max weight
                                  }

                                print("Minimum weight for BMI 18.5: $min_weight kg");
                                print("Maximum weight for BMI 24.9: $max_weight kg");
                              }

                              if(bmi<18.5){
                                print("underweight");
                                color1="0XFF95720C";
                                text_dis="!! OOPS - UNDERWEIGHT !!";
                                diet = '''To gain weight healthily, increase daily calorie intake by 300–500, eat smaller frequent meals with healthy snacks, and maintain a balanced diet including fruits, vegetables, starchy carbs, and dairy for optimal nutrition.''';
                              }
                              else if(bmi>=18.5 && bmi<=25.0){
                                color1="0XFF1A590F";
                                print("you are healhy");
                                text_dis = "!! WELDONE-NORMAL !!";
                                diet = '''
Eat a balanced diet with fruits, vegetables, whole grains, lean protein, and low-fat dairy. Include healthy fats moderately, avoid processed snacks and sugary drinks, and drink plenty of water for health.''';
                              }
                              else if(bmi>=25.0 && bmi<=29.9){
                                color1 = "0XFF9F5D16";
                                print(" overweight");
                                text_dis = "!! OH - OVERWEIGHT !!";
                                diet = "Maintain a balanced diet with fruits, vegetables, lean meats, and whole grains. Avoid unhealthy foods, drink water, exercise regularly, eat slowly and consistently, and use a calorie calculator for specific goals.";
                              }
                              else{
                                color1 ="0XFF5B0C0C";
                                print("you are obese");
                                text_dis = "!! OH NO - OBESE !!";
                                diet = "Eat fruits, vegetables, whole grains, lean protein, low-fat dairy, and healthy fats. Avoid processed foods, sugary drinks, and fatty meats. Drink plenty of water and limit refined carbohydrates for better health.";
                              }

                              Navigator.push(context, MaterialPageRoute(builder:(context){
                                return Second(bmi,color1,text_dis,height,min_weight,max_weight,diet);


                              }
                              ),
                              );
                            }
                            else{
                              setState(() {
                                result = "!! PLEASE FILL ALL THE REQUIRED DETAILS !!";
                              });
                            }


                            print("Button clicked");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF55286F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                          child: Text("CALCULATE",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),),),
            
                    margin: EdgeInsets.only(top:115),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(result,style: TextStyle(
                        color:Colors.white,
                      fontSize: 15
                    ),
                    ),

                  ),
                  margin: EdgeInsets.only(top:20),
                )
              ],
            ),
          ),

    );
  }
}
