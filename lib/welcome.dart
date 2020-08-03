import 'package:auth/home.dart';
import 'sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {

  static String id = "welcome";
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    if(FirebaseAuth.instance.currentUser() != null) {
      print("Going Home");
      Navigator.pushNamed(context, Home.id);
    }
    Navigator.pushNamed(context, SignIn.id);
  }
}
