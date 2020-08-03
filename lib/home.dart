import 'package:auth/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Home extends StatefulWidget {
  static String id = "home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    if(FirebaseAuth.instance.currentUser() != null) {
      print("Going Out");
      Navigator.pushNamed(context, SignIn.id);
    }
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text("Yippie, logged in."),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () async {
                setState(() {
                  showSpinner = true;
                });
                  await _auth.signOut().then((value) {
                    Navigator.pushNamed(context, SignIn.id);
                  });
                  setState(() {
                    showSpinner = false;
                  });
              },
              child: Text(
                "Sign Out",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ])),
    );
  }
}
