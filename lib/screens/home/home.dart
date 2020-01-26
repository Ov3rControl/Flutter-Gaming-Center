import 'package:app/screens/home/locationWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';

import 'latencyWidget.dart';
import 'newsWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      body: Column(children: <Widget>[
        FadeIn(1.5, newsWidget(context)),
        FadeIn(2.3, latencyWidget(context)),
        FadeIn(2.9, locationWidget(context))
      ]),
    );
  }
}
