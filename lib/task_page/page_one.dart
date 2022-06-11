import 'package:flutter/material.dart';
import 'package:m5lesson4ui3/bags/bag_page.dart';
import 'package:m5lesson4ui3/food_nut/food.dart';
import 'package:m5lesson4ui3/phone/phone_notebool.dart';
import '../chair/chairstool.dart';
import '../profil/profil_page.dart';
import '../shopped/shopped_page.dart';
import '../sign/sign_up.dart';

class Task_page extends StatefulWidget {
  static final String id = "task_page";

  const Task_page({Key? key}) : super(key: key);

  @override
  _Task_pageState createState() => _Task_pageState();
}

class _Task_pageState extends State<Task_page> {
  final List<String> _itemlist = [
    "assets/images/f1.jpg",
    "assets/images/f2.jpg",
    "assets/images/f3.jpg",
    "assets/images/f4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                        ),

                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 15),
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Phone.id);
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/phone.webp"),
                      ),
                    ),
                  ),
                  Text(
                    "New Phone",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Billabong",
                        letterSpacing: 2.5),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Chair.id);
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/chairone.jpg"),
                      ),
                    ),
                  ),
                  Text(
                    "Chair & Stool",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Billabong",
                        letterSpacing: 2.5),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Food.id);
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 15),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/oziq.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    "Food Product ",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Billabong",
                        letterSpacing: 2.5),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Bag.id);
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/bag1.jpg"),
                      ),
                    ),
                  ),
                  Text(
                    "Bags ",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Billabong",
                        letterSpacing: 2.5),
                  )
                ],
              ),
            ),

          ],
        ),
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade800,
        title: new Text(
          "Market Place",
          style: new TextStyle(
              fontFamily: 'Billabong',
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Shopped.id);
            },
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Profil.id);
            },
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "Search on Market Place ",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Color(0xFF018197),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              ///mahsulotlar image
              GridView.count(
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: [
                  for (String image in _itemlist)
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.fill, image: AssetImage(image))),
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: 5,
              ),

              ///Kompyuter and phone list
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeimage("assets/images/item_1.jpeg", "Most convenient"),
                    makeimage("assets/images/item_2.jpeg", "Wallet section"),
                    makeimage("assets/images/item_3.jpeg", "For you"),
                    makeimage("assets/images/item_4.jpeg", "Invisible"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              /// Find coment
              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage("assets/images/orange.webp"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "you will find a set ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "MyFlutterApp",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800),
                      ),
                    ),
                    Center(
                      child: Text(
                        "of products of any kind here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "MyFlutterApp",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              /// Phone and Notebook massiv
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: phone(
                              "assets/images/kond.jpg", "Air Conditioners"),
                        ),
                        Container(
                          child: phone("assets/images/tv.webp", "  TV s"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: phone("assets/images/holad.jpg", "Haladelnik"),
                        ),
                        Container(
                          child: phone("assets/images/velik.webp", "Velasiped"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ///Kiyim list
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeimage("assets/images/kiyim1.webp", "For men"),
                    makeimage("assets/images/kiyim2.webp", "Attractive"),
                    makeimage("assets/images/kiyim3.jpeg", "To be quality"),
                    makeimage("assets/images/kiyim4.jpg", "Arrogance"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeimage(String image, String text) {
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 2.4 / 1.4,
        child: Column(
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: "Billabong",
                        letterSpacing: 2.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget phone(String image, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 160,
        child: Column(
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.only(right: 10, bottom: 10, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
