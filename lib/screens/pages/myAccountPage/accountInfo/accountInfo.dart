import 'dart:async';

import 'package:app/screens/pages/myAccountPage/accountInfo/components/body.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  int _state = 0;

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
            'Account Information'.toUpperCase(),
            style: TextStyle(letterSpacing: 0.5),
          ),
        ),
        body: SafeArea(child: Body()));
  }

  Widget setUpButtonChild() {
    if (_state == 0) {
      return new Text(
        "CREATE ACCOUNT",
        textScaleFactor: 1.2,
        style: const TextStyle(
            color: Colors.white,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold),
      );
    } else if (_state == 1) {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    } else {
      return Icon(Icons.check, size: 38, color: Colors.white);
    }
  }

  void animateButton() {
    setState(() {
      _state = 1;
    });

    Timer(Duration(milliseconds: 3300), () {
      setState(() {
        Navigator.pushNamed(context, '/login');
      });
    });
  }
}
