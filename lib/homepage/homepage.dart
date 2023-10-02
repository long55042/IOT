import 'package:doaniot/information/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/Homepage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Page1.routeName);
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 200, 50, 0),
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.fitWidth,
                      // height: 200,
                      // width: 2000,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Page1.routeName);
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'SMART PARKING',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),
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
