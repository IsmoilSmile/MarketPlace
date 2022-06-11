import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  static final String id = "phone_page";
  const Phone({Key? key}) : super(key: key);

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Phone and Notebook",style: TextStyle(fontFamily: "Billabong",fontSize: 30,color: Colors.white,letterSpacing: 1.5),),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Colors.purple,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: const [
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
            Expanded(
              child: ListView(
                children: [

                  SizedBox(
                    height: 8,
                  ),

                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Deal of the Day",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity,
                          height: 205,
                          child: Image(
                            image: AssetImage("assets/images/item_7.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Up to 31\$ off APC UPS Battary Back",
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade800),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$10.99 - \$ 79.9",
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best sellers in Electronic ",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_7.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_1.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_2.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_3.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top products in camera",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_1.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_2.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/item_3.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
