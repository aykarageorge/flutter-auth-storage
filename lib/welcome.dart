
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {

  static String id = "welcome";

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to the Jungle",
        textAlign: TextAlign.center),
      ),
    );
  }
}