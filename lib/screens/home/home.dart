import 'package:app/screens/home/newsWidget.dart';
import 'package:app/screens/home/profileSummaryWidget.dart';
import 'package:app/screens/home/recentInvoiceWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

import '../../animations/fadeIn.dart';

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
      body: FabCircularMenu(
        child: Column(children: <Widget>[
          FadeIn(1.5, newsWidget(context)),
          FadeIn(1.9, profileSummaryWidget(context)),
          FadeIn(2.4, recentInvoiceWidget(context)),
        ]),
        fabColor: Theme.of(context).secondaryHeaderColor,
        fabOpenIcon: Icon(Entypo.menu),
        fabOpenColor: Theme.of(context).secondaryHeaderColor,
        fabCloseColor: Theme.of(context).secondaryHeaderColor,
        fabMargin: EdgeInsets.only(
            bottom: ScreenUtil().setHeight(140),
            right: ScreenUtil().setWidth(30)),
        ringColor: Colors.grey[900].withOpacity(0.91),
        ringDiameter: ScreenUtil().setWidth(400),
        ringWidth: ScreenUtil().setWidth(150),
        options: <Widget>[
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(140)),
            child: FlatButton(
              onPressed: () => {},
              padding: EdgeInsets.all(5.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(MaterialCommunityIcons.calendar_plus,
                      size: ScreenUtil().setSp(55),
                      color: Theme.of(context).secondaryHeaderColor),
                  SizedBox(height: 3.0),
                  Text(
                    "BOOK NOW!",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(20),
                        color: Theme.of(context).secondaryHeaderColor),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(200)),
            child: FlatButton(
              onPressed: () => {},
              padding: EdgeInsets.all(5.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(MaterialCommunityIcons.qrcode_scan,
                      size: ScreenUtil().setSp(55),
                      color: Theme.of(context).secondaryHeaderColor),
                  SizedBox(height: 3.0),
                  Text(
                    "QR SCAN",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(20),
                        color: Theme.of(context).secondaryHeaderColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
