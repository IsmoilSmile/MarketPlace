import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  static final String id = "food_page";

  const Food({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Food> {
  final List<String> _itemlist = [
    "assets/images/f1.jpg",
    "assets/images/f2.jpg",
    "assets/images/f3.jpg",
    "assets/images/f4.jpg",
    "assets/images/f5.jpg",
    "assets/images/f6.png",
    "assets/images/f7.jpeg",
    "assets/images/f8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Food Product",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Billabong",
              letterSpacing: 2.5),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#header
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/f9.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.3),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(width: 200,
                        child: ElevatedButton(
                            style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue)
                                )
                            )
                        ),
                          onPressed: () {},
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "Shop Now",
                                style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),SizedBox(height: 15,),
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
            Icon(
              Icons.star_border,
              color: Colors.yellow,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
