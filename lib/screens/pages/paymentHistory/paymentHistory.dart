import 'package:app/screens/pages/paymentHistory/components/body.dart';
import 'package:flutter/material.dart';

class PaymentHistory extends StatefulWidget {
  @override
  _PaymentHistoryState createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
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
          title: Text(
            'Payment History'.toUpperCase(),
            style: TextStyle(letterSpacing: 0.5),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Body(),
        )));
  }
}
