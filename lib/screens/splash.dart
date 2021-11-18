import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackathon/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()))
            });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/GIFs/basket.gif"),
          // Text(
          //   "Online Shopping App",
          //   style: TextStyle(
          //       fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
          // ),
        ],
      )),
    );
  }
}
