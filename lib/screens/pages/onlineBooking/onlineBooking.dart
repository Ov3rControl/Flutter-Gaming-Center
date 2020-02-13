import 'package:app/screens/pages/onlineBooking/components/body.dart';
import 'package:flutter/material.dart';

class OnlineBooking extends StatefulWidget {
  @override
  _OnlineBookingState createState() => _OnlineBookingState();
}

class _OnlineBookingState extends State<OnlineBooking> {
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
            'Online Booking'.toUpperCase(),
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
