import 'dart:async';

import 'package:flutter/material.dart';
import 'package:m5lesson4ui3/task_page/intro.dart';
class SmilePage extends StatefulWidget {
  static final String id = "smile_page";
  const SmilePage({Key? key}) : super(key: key);

  @override
  _SmilePageState createState() => _SmilePageState();
}
class _SmilePageState extends State<SmilePage> {
  @override
  _iniLogo(){
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, Task_Intro.id);
    });
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    _iniLogo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(50),
        child: Stack(
          children:[
            Center(
              child: Image.asset("assets/images/sale.png",height: 180,width: 180,),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("Market Place",style: TextStyle(fontSize: 30,color: Colors.red.shade900,fontFamily: "Billabong",letterSpacing: 3,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
