
import 'package:doaniot/bottom-menu/bottom-menu.dart';
import 'package:doaniot/information/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  static const routeName = '/Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Column(
                    children: const [
                      Text('Hello User', style: TextStyle(color: Colors.white, fontSize: 28,),),
                      Text('Good morning', style: TextStyle(color: Colors.white, fontSize: 20,),),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 240,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Icon(Icons.add_alert),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomMenuBar(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Image.asset(
                'assets/images/nen.jpg',
                height: 200.0,
                width: 200.0,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.only(right: 12.0),
              child: Image.asset(
                'assets/images/nen.jpg',
                fit: BoxFit.fitWidth,
                // height: 200,
                // width: 2000,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
