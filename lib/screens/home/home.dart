import 'package:app/screens/home/locationWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';
import 'latencyWidget.dart';
import 'newsWidget.dart';
import 'appBarWidget.dart';

int _page = 0;
GlobalKey _bottomNavigationKey = GlobalKey();

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
        appBar: appBarWidget(context),
        body: Column(children: <Widget>[
          FadeIn(2.0, newsWidget(context)),
          FadeIn(3.0, latencyWidget(context)),
          FadeIn(4.0, locationWidget(context))
        ]),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: Theme.of(context).secondaryHeaderColor,
          height: 52.0,
          index: 2,
          animationDuration: Duration(milliseconds: 500),
          items: <Widget>[
            Icon(Icons.equalizer, size: 26),
            Icon(Icons.memory, size: 30),
            Icon(Icons.polymer, size: 30),
            Icon(Icons.slow_motion_video, size: 30),
            Icon(Icons.account_circle, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        drawer: Drawer());
  }
}
