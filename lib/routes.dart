import 'package:app/screens/login/login.dart';
import 'package:app/screens/register/register.dart';
import 'package:flutter/widgets.dart';
import './screens/onBoard/onBoardScreen.dart';
import 'navigation/bottomNavigation/bottomNavigationWidget.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => OnBoardingScreen(),
  "/login": (BuildContext context) => LoginScreen(),
  "/register": (BuildContext context) => RegisterScreen(),
  "/bottomNavigation": (BuildContext context) => BottomNavigation(),
};
