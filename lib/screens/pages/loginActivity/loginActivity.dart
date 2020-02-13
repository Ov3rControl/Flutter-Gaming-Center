import 'package:app/screens/pages/loginActivity/components/body.dart';
import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget {
  @override
  _LoginActivityState createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Login Activity'.toUpperCase(),
            style: TextStyle(letterSpacing: 0.5),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Body(),
        )));
  }
}
