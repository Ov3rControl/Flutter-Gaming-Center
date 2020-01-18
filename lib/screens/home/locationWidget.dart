import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

locationWidget(context) {
  return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonTheme(
                  minWidth: 140.0,
                  child: RaisedButton.icon(
                    icon: Icon(Icons.location_on), // <-- Icon you want.
                    textColor: Colors.white,
                    color: Theme.of(context).secondaryHeaderColor,
                    label: Text(
                      'Location',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(32)),
                    ), // <-- Your text.
                    onPressed: () {},
                  )),
              ButtonTheme(
                  minWidth: 140.0,
                  child: RaisedButton.icon(
                    icon: Icon(FontAwesomeIcons.facebook), // <-- Icon you want.
                    textColor: Colors.white,
                    color: Colors.blue,
                    label: Text(
                      'Facebook',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(32)),
                    ), // <-- Your text.
                    onPressed: () {},
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonTheme(
                  minWidth: 140.0,
                  child: RaisedButton.icon(
                    icon: Icon(FontAwesomeIcons.phone), // <-- Icon you want.
                    textColor: Colors.white,
                    color: Colors.green,
                    label: Text(
                      'Call',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(32)),
                    ), // <-- Your text.
                    onPressed: () {},
                  )),
              ButtonTheme(
                  minWidth: 140.0,
                  child: RaisedButton.icon(
                    icon: Icon(FontAwesomeIcons.whatsapp), // <-- Icon you want.
                    textColor: Colors.white,
                    color: Colors.green,
                    label: Text(
                      'WhatsApp',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(32)),
                    ), // <-- Your text.
                    onPressed: () {},
                  )),
            ],
          ),
        ],
      ));
}
