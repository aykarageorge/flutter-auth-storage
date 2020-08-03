import 'package:auth/home.dart';
import 'package:auth/register.dart';
import 'package:auth/sign_in.dart';
import 'package:auth/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Home.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        Register.id: (context) => Register(),
        SignIn.id: (context) => SignIn(),
        Home.id: (context) => Home()
      },
    );
  }
}