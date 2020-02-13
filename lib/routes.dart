import 'package:app/screens/login/login.dart';
import 'package:app/screens/pages/gameTracking/gameTracking.dart';
import 'package:app/screens/pages/loginActivity/loginActivity.dart';
import 'package:app/screens/pages/myAccountPage/accountInfo/accountInfo.dart';
import 'package:app/screens/pages/myAccountPage/myAccountPage.dart';
import 'package:app/screens/pages/onlineBooking/onlineBooking.dart';
import 'package:app/screens/pages/paymentHistory/paymentHistory.dart';
import 'package:app/screens/register/register.dart';
import 'package:flutter/widgets.dart';
import './screens/onBoard/onBoardScreen.dart';
import 'navigation/bottomNavigation/bottomNavigationWidget.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => OnBoardingScreen(),
  "/login": (BuildContext context) => LoginScreen(),
  "/register": (BuildContext context) => RegisterScreen(),
  "/bottomNavigation": (BuildContext context) => BottomNavigation(),
  "/myAccountPage": (BuildContext context) => MyAccountPage(),
  "/accountInfo": (BuildContext context) => AccountInfo(),
  "/paymentHistory": (BuildContext context) => PaymentHistory(),
  "/loginActivity": (BuildContext context) => LoginActivity(),
  "/gameTracking": (BuildContext context) => GameTracking(),
  "/onlineBooking": (BuildContext context) => OnlineBooking(),
};
