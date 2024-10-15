import 'dart:async';
import 'package:mpower/Screens/dashboard.dart';
import 'package:mpower/Screens/login.dart';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  static const String routeName = '';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => Splash(),
    );
  }

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  var AlreadyLogged;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
              if (this.AlreadyLogged == true) {
                  return Dashboard();
              } else {
                return Login();
              }
            })));

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 200),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/mpower.png", height: 200, width: 200,),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "MPower",
              style: TextStyle(
                  fontFamily: "Arial",
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                  fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Financial Solutions",
              style: TextStyle(
                  fontFamily: "Arial", color: Colors.blue, fontSize: 25),
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              "Initializing...",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
