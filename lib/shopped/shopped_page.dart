import 'package:flutter/material.dart';
class Shopped extends StatefulWidget {
  static final String id = "shopped_page";
  const Shopped({Key? key}) : super(key: key);

  @override
  _ShoppedState createState() => _ShoppedState();
}

class _ShoppedState extends State<Shopped> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/notfound.jpg"),
                  ),
                ),
              ),
              Text("No results",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              Text("We could not find anything for the specified order parameters",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),),
            ],
          ),
        ),
      ),
    );
  }
}
