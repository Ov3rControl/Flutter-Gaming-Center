import 'package:app/screens/leaderboards/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';

class LeaderboardsScreen extends StatefulWidget {
  @override
  _LeaderboardsScreenState createState() => _LeaderboardsScreenState();
}

class _LeaderboardsScreenState extends State<LeaderboardsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Body(),
    ));
  }
}
