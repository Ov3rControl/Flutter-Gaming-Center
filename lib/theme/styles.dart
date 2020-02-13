import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  final primaryOrangeColor = Color(0xffF70F01);
  final primaryBackgroundColor = Color(0xff171717);

  return ThemeData(
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
        textTheme: TextTheme(
            title: TextStyle(
          fontSize: 18,
          color: primaryOrangeColor,
          fontWeight: FontWeight.w500,
        )),
        color: Color(0xff171717),
        iconTheme: IconThemeData(color: Colors.grey[100]),
        actionsIconTheme: IconThemeData(color: Colors.grey[100])),
    textTheme: TextTheme(
      body1:
          // body1: GoogleFonts.nunitoSans(
          //   textStyle:
          TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      // ),
    ),
    secondaryHeaderColor: primaryOrangeColor,
    hintColor: Colors.white,
    dividerColor: Colors.grey,
    scaffoldBackgroundColor: primaryBackgroundColor,
    //scaffoldBackgroundColor: Color(0xff1E2326),
    primaryColorLight: Colors.white,
    textSelectionColor: Colors.white,
    textSelectionHandleColor: Colors.white,
    primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
  );
}
