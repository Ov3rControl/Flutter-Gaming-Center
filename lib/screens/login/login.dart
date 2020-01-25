import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';
import '../../theme/styles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    passwordVisible = false;
  }

  // Initially password is obscure
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
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
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF272B2E),
              ),
              child: TextField(
                cursorColor: Theme.of(context).secondaryHeaderColor,
                style: new TextStyle(
                    decoration: TextDecoration.none,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
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
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF272B2E),
              ),
              child: TextFormField(
                obscureText: passwordVisible,
                cursorColor: Theme.of(context).secondaryHeaderColor,
                style: new TextStyle(
                    decoration: TextDecoration.none,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
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
                            ? Icons.visibility
                            : Icons.visibility_off,
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
          ],
        ),
      ),
    ));
  }
}
