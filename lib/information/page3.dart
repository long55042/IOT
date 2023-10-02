import 'package:doaniot/information/page2.dart';
import 'package:doaniot/login/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page3 extends StatefulWidget {
  static const routeName = '/Page3';
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 45,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 140),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Login.routeName);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Ink(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Skip",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 220, 0, 0),
                    child: Text(
                      'Smart parking application',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 13,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Information solutions help you proactively manage vehicle entry and exit when a fixed parking system cannot be arranged.',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: TextButton(
                onPressed: () async {{
                  Navigator.of(context).pushReplacementNamed(Login.routeName);
                }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Get Start",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
