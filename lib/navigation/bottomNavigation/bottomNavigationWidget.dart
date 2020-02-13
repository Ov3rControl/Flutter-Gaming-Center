import 'package:app/screens/features/features.dart';
import 'package:app/screens/games/games.dart';
import 'package:app/screens/home/home.dart';
import 'package:app/screens/leaderboards/leaderboards.dart';
import 'package:app/screens/profile/profile.dart';
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
  int _currentIndex = 2;
  final List<Widget> _children = [
    LeaderboardsScreen(),
    FeaturesScreen(),
    HomeScreen(),
    GamesScreen(),
    ProfileScreen()
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
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Container(
            margin:
                EdgeInsets.only(top: ScreenUtil().setHeight(statusBarHeight)),
            child: _children[_currentIndex]),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          onTap: onTabTapped,
          index: _currentIndex,
          key: _bottomNavigationKey,
          backgroundColor: Colors.transparent,
          color: Theme.of(context).secondaryHeaderColor,
          height: 52.0,
          animationDuration: Duration(milliseconds: 500),
          items: <Widget>[
            Icon(Entypo.trophy),
            Icon(FontAwesome.dollar),
            Icon(FontAwesome5Brands.gg_circle, size: 30),
            Icon(Entypo.game_controller),
            Icon(Icons.account_circle, size: 30),
          ],
        ));
  }
}
