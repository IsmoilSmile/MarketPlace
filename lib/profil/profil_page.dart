import 'package:flutter/material.dart';
class Profil extends StatefulWidget {
  static final String id = "profil_page";
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        elevation: 0,
        centerTitle: true,
        title: Text("Profile",style: TextStyle(fontFamily: "MyFlutterApp",fontSize: 20,color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/profil2.jpg"),
                    ),
                  ),
                ),
              ),
              //Change picture
              SizedBox(height: 5,),
              GestureDetector(onTap: (){

              },
              child: Text("Change picture",style: TextStyle(color: Colors.grey.shade400,fontSize: 15),),),
              //aboud profil man
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade600,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("First name",style: TextStyle(color: Colors.grey.shade500,fontSize: 14),),
                    Text("Ismoil",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 14),
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade600,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Last name",style: TextStyle(color: Colors.grey.shade500,fontSize: 14),),
                    Text("Murotaliev",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade600,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User name",style: TextStyle(color: Colors.grey.shade500,fontSize: 14),),
                    Text("Smile99",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
              //Contact Details
              SizedBox(height: 50,),
              Container(padding: EdgeInsets.only(right: 260),
                child: Text("Contact Details",textAlign:TextAlign.start,style: TextStyle(color: Colors.grey.shade500,fontSize: 18),),
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15) ),
                  color: Colors.grey.shade600,
                ),
                child: Row(
                  children: [
                    Icon(Icons.email_outlined,color: Colors.grey.shade800,),
                    SizedBox(width: 10,),
                    Text("Email address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 3,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                ),
                child: Row(
                  children: [
                    Icon(Icons.call_outlined,color: Colors.grey.shade800,),
                    SizedBox(width: 10,),
                    Text("Phone number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 3,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15) ),
                  color: Colors.grey.shade600,
                ),
                child:Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.grey.shade800,),
                    SizedBox(width: 10,),
                    Text("Residential addresses",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
