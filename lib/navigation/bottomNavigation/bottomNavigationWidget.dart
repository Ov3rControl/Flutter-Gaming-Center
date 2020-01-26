import 'package:app/navigation/bottomNavigation/components/appBarWidget.dart';
import 'package:app/screens/home/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_icons/flutter_icons.dart';

GlobalKey _bottomNavigationKey = GlobalKey();

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
        appBar: appBarWidget(context),
        body: _children[_currentIndex],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: CurvedNavigationBar(
          onTap: onTabTapped, // new
          index: _currentIndex, // new
          key: _bottomNavigationKey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: Theme.of(context).secondaryHeaderColor,
          height: 52.0,
          animationDuration: Duration(milliseconds: 500),
          items: <Widget>[
            Icon(Entypo.trophy),
            Icon(Entypo.price_ribbon),
            Icon(Icons.polymer, size: 30),
            Icon(Entypo.game_controller),
            Icon(Icons.account_circle, size: 30),
          ],
        ),
        drawer: Drawer());
  }
}
