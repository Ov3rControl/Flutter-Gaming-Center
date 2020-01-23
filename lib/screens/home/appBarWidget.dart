import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../animations/fadeIn.dart';

appBarWidget(context) {
  return AppBar(
    brightness: Brightness.dark,
    elevation: 5.0,
    backgroundColor: Color(0xff18181C),
    automaticallyImplyLeading: false,
    textTheme: TextTheme(title: TextStyle(fontSize: 12.0, color: Colors.white)),
    title: FadeIn(
        2.0,
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Icon(
              Icons.polymer,
              color: Theme.of(context).secondaryHeaderColor,
              size: 35.0,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 8, 10, 8),
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          ExactAssetImage('assets/Emblem_Gold.png'),
                    ),
                    Positioned(
                      left: 25.0,
                      right: 0.0,
                      bottom: -1.0,
                      child: Icon(
                        Icons.lens,
                        color: Colors.green,
                        size: 12.0,
                      ),
                    )
                  ],
                ),
                decoration: new BoxDecoration(
                  border: new Border.all(
                    color: Theme.of(context).secondaryHeaderColor,
                    width: 1.3,
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                )),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: Theme.of(context).secondaryHeaderColor,
                          size: 12.0,
                        ),
                        SizedBox(width: 2.0),
                        Text('Ov3rControl')
                      ],
                    ),
                    SizedBox(height: 1.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Theme.of(context).secondaryHeaderColor,
                          size: 12.0,
                        ),
                        SizedBox(width: 2.0),
                        Text('5h 32m')
                      ],
                    ),
                    SizedBox(height: 1.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.trip_origin,
                          color: Theme.of(context).secondaryHeaderColor,
                          size: 12.0,
                        ),
                        SizedBox(width: 2.0),
                        Text('150')
                      ],
                    ),
                  ]),
            )
          ],
        )),
    actions: <Widget>[
      FadeIn(
          2.0,
          IconButton(
            icon: Icon(
              FontAwesomeIcons.qrcode,
              color: Theme.of(context).secondaryHeaderColor,
              size: 30.0,
            ),
            tooltip: 'QRCode Login',
            onPressed: () {},
          ))
    ],
  );
}
