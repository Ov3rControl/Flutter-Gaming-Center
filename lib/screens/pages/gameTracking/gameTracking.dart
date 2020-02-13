import 'package:app/screens/pages/gameTracking/components/body.dart';
import 'package:flutter/material.dart';

class GameTracking extends StatefulWidget {
  @override
  _GameTrackingState createState() => _GameTrackingState();
}

class _GameTrackingState extends State<GameTracking> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          ],
          title: Text(
            'Game Tracking'.toUpperCase(),
            style: TextStyle(letterSpacing: 0.5),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Body(),
        )));
  }
}
