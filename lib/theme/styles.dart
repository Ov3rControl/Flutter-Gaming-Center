import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    secondaryHeaderColor: Color(0xffFE5003),
    hintColor: Colors.white,
    dividerColor: Colors.grey,
    scaffoldBackgroundColor: Color(0xff1E2326),
    // scaffoldBackgroundColor: Color(0xff201F23),
    primaryColorLight: Colors.white,
    textSelectionColor: Colors.white,
    textSelectionHandleColor: Colors.white,
    primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
  );
}
