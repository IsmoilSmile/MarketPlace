import 'package:flutter/material.dart';

class Bag extends StatefulWidget {
  static final String id = "bag_page";

  const Bag({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Bag> {
  final List<String> _itemlist = [
    "assets/images/bag2.webp",
    "assets/images/bag3.jpg",
    "assets/images/bag4.jpg",
    "assets/images/bag5.jpg",
    "assets/images/bag6.jpg",
    "assets/images/bag7.jpg",
    "assets/images/bag8.jpg",
    "assets/images/bag9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Bags Product",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Billabong",
              letterSpacing: 2.5),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#header
            SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "What are you looking for? ",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Color(0xFF018197),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Color(0xFF018197),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Grid View
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: _itemlist.map((item) => cellOfList(item)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cellOfList(item) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ],
        ),
      ),
    );
  }
}
