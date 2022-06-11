import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                  LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.5),
                  ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Best Hotels Ever",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for hotels...",
                          hintStyle:
                          TextStyle(fontSize: 15, color: Colors.grey),
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Business Hotels",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeimage("assets/images/ic_hotel1.jpg","First Hotel"),
                        makeimage("assets/images/ic_hotel2.jpg","Second Hotel"),
                        makeimage("assets/images/ic_hotel3.jpg","ThirdtHotel"),
                        makeimage("assets/images/ic_hotel4.jpg","Fourth Hotel"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Airport Hotels",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeimage("assets/images/ic_hotel5.jpg","First Hotel"),
                        makeimage("assets/images/ic_hotel3.jpg","Second Hotel"),
                        makeimage("assets/images/ic_hotel2.jpg","Third Hotel"),
                        makeimage("assets/images/ic_hotel1.jpg","Fourth Hotel"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Resort Hotels",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeimage("assets/images/ic_hotel3.jpg","First Hotel"),
                        makeimage("assets/images/ic_hotel4.jpg","Second Hotel"),
                        makeimage("assets/images/ic_hotel1.jpg","Third Hotel"),
                        makeimage("assets/images/ic_hotel2.jpg","Fourth Hotel"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeimage(String image, String text) {
    return AspectRatio(
      aspectRatio: 1.4 / 1.4,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            Icon(Icons.favorite,size: 25,color: Colors.red,),
          ],
        ),
      ),
    );
  }
}
