import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int _state = 0;
  @override
  void initState() {
    passwordVisible = true;
    confirmPasswordVisible = true;
  }

  // Initially password is obscure
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              colors: Colors.orange,
              size: 200.0,
            ),
            // Image(
            //   image: AssetImage('assets/Emblem_Master.png'),
            //   width: ScreenUtil().setWidth(550),
            //   height: ScreenUtil().setHeight(350),
            // ),
            SizedBox(height: 10),
            Container(
              width: ScreenUtil().setWidth(650),
              height: ScreenUtil().setHeight(90),
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF1E2326),
              ),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                cursorColor: Theme.of(context).secondaryHeaderColor,
                style: new TextStyle(
                    fontSize: ScreenUtil().setSp(32),
                    decoration: TextDecoration.none,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person,
                    color: Theme.of(context).secondaryHeaderColor,
                    size: 30,
                  ),
                  hintText: 'FULL NAME',
                  hintStyle:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor),
                ),
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(650),
              height: ScreenUtil().setHeight(90),
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF1E2326),
              ),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                cursorColor: Theme.of(context).secondaryHeaderColor,
                style: new TextStyle(
                    fontSize: ScreenUtil().setSp(32),
                    decoration: TextDecoration.none,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person_pin,
                    color: Theme.of(context).secondaryHeaderColor,
                    size: 30,
                  ),
                  hintText: 'USERNAME',
                  hintStyle:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor),
                ),
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(650),
              height: ScreenUtil().setHeight(90),
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF1E2326),
              ),
              child: TextFormField(
                obscureText: passwordVisible,
                cursorColor: Theme.of(context).secondaryHeaderColor,
                style: new TextStyle(
                    fontSize: ScreenUtil().setSp(32),
                    decoration: TextDecoration.none,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: Theme.of(context).secondaryHeaderColor,
                    size: 30,
                  ),
                  hintText: 'PASSWORD',
                  hintStyle:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                        passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Theme.of(context).secondaryHeaderColor,
                        size: 30),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(650),
              height: ScreenUtil().setHeight(90),
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF1E2326),
              ),
              child: TextFormField(
                obscureText: confirmPasswordVisible,
                cursorColor: Theme.of(context).secondaryHeaderColor,
                style: new TextStyle(
                    fontSize: ScreenUtil().setSp(32),
                    decoration: TextDecoration.none,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: Theme.of(context).secondaryHeaderColor,
                    size: 30,
                  ),
                  hintText: 'CONFIRM PASSWORD',
                  hintStyle:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                        confirmPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Theme.of(context).secondaryHeaderColor,
                        size: 30),
                    onPressed: () {
                      setState(() {
                        confirmPasswordVisible = !confirmPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(9, 18, 9, 26),
              child: new MaterialButton(
                  child: setUpButtonChild(),
                  onPressed: () {
                    setState(() {
                      if (_state == 0) {
                        animateButton();
                      }
                    });
                  },
                  elevation: 4.0,
                  minWidth: double.infinity,
                  height: ScreenUtil().setHeight(90),
                  color: Theme.of(context).secondaryHeaderColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(6))),
            ),
          ],
        ),
      ),
    ));
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
