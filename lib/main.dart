import 'package:flutter/material.dart';
import 'package:m5lesson4ui3/bags/bag_page.dart';
import 'package:m5lesson4ui3/chair/chairstool.dart';
import 'package:m5lesson4ui3/phone/phone_notebool.dart';
import 'package:m5lesson4ui3/profil/profil_page.dart';
import 'package:m5lesson4ui3/sale_page/page_sale.dart';
import 'package:m5lesson4ui3/shopped/shopped_page.dart';
import 'package:m5lesson4ui3/sign/sign_up.dart';
import 'package:m5lesson4ui3/task_page/intro.dart';
import 'package:m5lesson4ui3/task_page/page_one.dart';

import 'food_nut/food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SmilePage(),
      routes: {
        Task_Intro.id: (context) => Task_Intro(),
        Task_page.id: (context) => Task_page(),
        SmilePage.id:(context) => SmilePage(),
        Phone.id:(context) => Phone(),
        Food.id:(context) => Food(),
        Chair.id:(context) => Chair(),
        Sign.id:(context) => Sign(),
        Shopped.id:(context) => Shopped(),
        Chair.id:(context) => Chair(),
        Bag.id:(context) => Bag(),
        Profil.id:(context) => Profil(),
      }
    );
  }
}