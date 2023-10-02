import 'package:doaniot/Home/Home.dart';
import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  BottomMenuBar({Key? key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: BottomAppBar(
        child: Row(

          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home_outlined, color: Colors.blue),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Home.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.payment, color: Colors.black),
                onPressed: () {
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.add_alert,  color: Colors.black),
                onPressed: () {

                },
              ),
            ),

            Expanded(
              child: IconButton(
                icon: Icon(Icons.settings, color: Colors.black),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
