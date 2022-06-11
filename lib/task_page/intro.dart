import 'package:flutter/material.dart';
import 'package:m5lesson4ui3/task_page/page_one.dart';
import 'package:m5lesson4ui3/task_page/string.dart';

import '../sign/sign_up.dart';

class Task_Intro extends StatefulWidget {
  static final String id = "task_intro";

  const Task_Intro({Key? key}) : super(key: key);

  @override
  _Task_IntroState createState() => _Task_IntroState();
}

class _Task_IntroState extends State<Task_Intro> {
  late PageController _pageController;
  int currenIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, Task_page.id);
              },
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ),
          ),
          SizedBox(width: 10,),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currenIndex = page;
              });
            },
            controller: _pageController,
            children: [
              makePage(
                title: Strings.stepOneTitle,
                context: Strings.stepOneContent,
                image: "assets/images/image_1.png",
              ),
              makePage(
                title: Strings.stepTwoTitle,
                context: Strings.stepTwoContent,
                image: "assets/images/image_2.png",
              ),
              makePage(
                title: Strings.stepThreeTitle,
                context: Strings.stepThreeContent,
                image: "assets/images/image_3 (1).png",
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndex(),
            ),
          ),
        ],
      ),
    );
  }

  Widget makePage({title, context, image, reverse = false}) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              context,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }

  Widget _idetorIndex(bool isActiv, int intdex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 7,
          width: isActiv ? 40 : 7,
          margin: EdgeInsets.only(left: 3, right: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.cyanAccent),
        ),
      ],
    );
  }

  List<Widget> _buildIndex() {
    List<Widget> idetro = [];
    for (int i = 0; i < 3; i++) {
      if (currenIndex == i) {
        idetro.add(
          _idetorIndex(true, i),
        );
      } else {
        idetro.add(_idetorIndex(false, i));
      }
    }
    return idetro;
  }
}
