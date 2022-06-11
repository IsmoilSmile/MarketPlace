import 'package:flutter/material.dart';

class Chair extends StatefulWidget {
  static final String id = "chair_page";
  const Chair({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Chair> {
  final List<String> _itemlist = [
    "assets/images/chair1.jpg",
    "assets/images/chair2.jpg",
    "assets/images/chair3.jpg",
    "assets/images/chair4.jpg",
    "assets/images/chair5.jpg",
    "assets/images/chair3.jpg",
    "assets/images/chair7.jpg",
    "assets/images/chair8.jpg",
    "assets/images/chair9.webp",
    "assets/images/chair10.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Apple Product",
          style: TextStyle(fontSize: 30,fontFamily: "Billabong",letterSpacing: 2.5,color: Colors.black),
        ),
        backgroundColor: Colors.orangeAccent,
        actions: [
          Icon(Icons.star_border,color: Colors.red,size: 35,),
          SizedBox(width: 20,),
        ],
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
                    image: AssetImage("assets/images/chair11.jpg"),
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
                      Text(
                        "Lifestyle sale",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 15),
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
                            ),
                            SizedBox(width: 5,),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              //Grid View
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children:
                  _itemlist.map((item) => cellOfList(item)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget cellOfList(item){
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.star_border,color: Colors.black,size: 35,),
          ],
        ),
      ),
    );
  }
}
