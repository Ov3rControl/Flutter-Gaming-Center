import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _state = 0;
  @override
  void initState() {
    passwordVisible = true;
  }

  // Initially password is obscure
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: FlutterLogo(
                      colors: Colors.orange,
                      size: 200,
                    ),
                  ),
                  // Image(
                  //   image: AssetImage('assets/Emblem_Master.png'),
                  //   width: ScreenUtil().setWidth(550),
                  //   height: ScreenUtil().setHeight(350),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: ScreenUtil().setHeight(100),
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xFF1E2326),
                      ),
                      alignment: Alignment.center,
                      child: TextField(
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
                          hintStyle: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10),
                      height: ScreenUtil().setHeight(100),
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
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
                          hintStyle: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor),
                          suffixIcon: IconButton(
                            icon: Icon(
                                passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context).secondaryHeaderColor,
                                size: ScreenUtil().setSp(55)),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: MaterialButton(
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
                        height: ScreenUtil().setHeight(100),
                        color: Theme.of(context).secondaryHeaderColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Not a member? ',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, '/register');
                          },
                          child: Text(
                            'JOIN NOW',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).secondaryHeaderColor),
                          ),
                        ),
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget setUpButtonChild() {
    if (_state == 0) {
      return new Text(
        "LOGIN",
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
        Navigator.pushReplacementNamed(context, '/bottomNavigation');
      });
    });
  }
}
