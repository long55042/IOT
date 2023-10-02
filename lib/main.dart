import 'package:doaniot/Home/Home.dart';
import 'package:doaniot/homepage/homepage.dart';
import 'package:doaniot/information/page1.dart';
import 'package:doaniot/information/page2.dart';
import 'package:doaniot/information/page3.dart';
import 'package:doaniot/login/signin.dart';
import 'package:doaniot/login/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    routes: {
      Home.routeName: (ctx) => Home(),
      Page1.routeName: (ctx) => Page1(),
      Page2.routeName: (ctx) => Page2(),
      Page3.routeName: (ctx) => Page3(),
      Login.routeName: (ctx) => Login(),
      SignUp.routeName: (ctx) => SignUp(),
    },
    );
  }
}

