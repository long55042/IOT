import 'package:doaniot/Home/Home.dart';
import 'package:doaniot/login/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login() : super();
  static const routeName = '/login';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<Login> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final widgetList = [
      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
          child: Image.asset(
            'assets/images/logo.jpg',
            width: 150,
            height: 150,
            fit: BoxFit.fitWidth,
            // height: 200,
            // width: 2000,
          ),
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
                'LOGIN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22),
              ),
            ),
          ],
        ),
      SizedBox(
        height: 100,
      ),
      Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Email',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    labelText: "password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                  onPressed: () async {
                    // if (_formKey.currentState!.validate())
                    {
                      Navigator.of(context).pushReplacementNamed(Home.routeName);
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
                          "Đăng Nhập",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Wrap(
                    children: [
                      Text(
                        "Don't have a account? ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(SignUp.routeName);
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          )),

                    ],
                  ),
                ],
              ),
              // Container(
              //   // height: 50.0,
              //   // color: Colors.white,
              //   child: Center(
              //       child: Wrap(
              //         children: [
              //           Text(
              //             "Don't have a account? ",
              //             style: TextStyle(
              //                 color: Colors.grey, fontWeight: FontWeight.bold),
              //           ),
              //           Material(
              //               child: InkWell(
              //                 onTap: () {
              //                   Navigator.of(context)
              //                       .pushReplacementNamed(SignUp.routeName);
              //                 },
              //                 child: Text(
              //                   "Register",
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 20,
              //                   ),
              //                 ),
              //               )),
              //
              //         ],
              //       ),
              //   ),
              // ),
            ],
          )),
      const SizedBox(
        height: 30.0,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(),
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xff191A19), Color(0xff191A19)])),
              height: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return widgetList[index];
              }, childCount: widgetList.length))
        ],
      ),
    );
  }
}
