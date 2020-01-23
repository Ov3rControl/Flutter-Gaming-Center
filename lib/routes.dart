import 'package:flutter/widgets.dart';
import './screens/home/home.dart';
import './screens/onBoard/onBoardScreen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => OnBoardingScreen(),
  "/home": (BuildContext context) => HomeScreen(),
};
