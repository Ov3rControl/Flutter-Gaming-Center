import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10),
            height: ScreenUtil().setHeight(135),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Color(0xFF1f1f1f),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      SimpleLineIcons.screen_desktop,
                      color: Color(0xFFA8A9AD),
                      size: 58,
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 2.0),
                        Row(children: <Widget>[
                          Icon(
                            MaterialCommunityIcons.star_three_points,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            'Standard | PC-01',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(34),
                                color: Colors.grey[350]),
                          ),
                        ]),
                        SizedBox(height: 5.0),
                        Text(
                          'Login Time: 4 Feb 2020 | 5:15 PM',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(20),
                              letterSpacing: 0.22),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Logout Time: 4 Feb 2020 | 7:48 PM',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(20)),
                        )
                      ],
                    ),
                  ],
                ),
                Text('2H 33M',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(32),
                        color: Colors.grey[350]))
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10),
            height: ScreenUtil().setHeight(135),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Color(0xFF1f1f1f),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      SimpleLineIcons.screen_desktop,
                      color: Color(0xFFA8A9AD),
                      size: 58,
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 2.0),
                        Row(children: <Widget>[
                          Icon(
                            MaterialCommunityIcons.star_three_points,
                            color: Color(0xFFDAA520),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            'Team Room | PC-06',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(34),
                                color: Colors.grey[350]),
                          ),
                        ]),
                        SizedBox(height: 5.0),
                        Text(
                          'Login Time: 3 Feb 2020 | 10:01 PM',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(20),
                              letterSpacing: 0.22),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Logout Time: 3 Feb 2020 | 12:00 PM',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(20)),
                        )
                      ],
                    ),
                  ],
                ),
                Text('10H 01M',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(32),
                        color: Colors.grey[350]))
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10),
            height: ScreenUtil().setHeight(135),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Color(0xFF1f1f1f),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      SimpleLineIcons.screen_desktop,
                      color: Color(0xFFA8A9AD),
                      size: 58,
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 2.0),
                        Row(children: <Widget>[
                          Icon(
                            MaterialCommunityIcons.star_three_points,
                            color: Color(0xFFA8A9AD),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            'Premium | PC-33',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(34),
                                color: Colors.grey[350]),
                          ),
                        ]),
                        SizedBox(height: 5.0),
                        Text(
                          'Login Time: 1 Feb 2020 | 5:15 PM',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(20),
                              letterSpacing: 0.22),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Logout Time: 1 Feb 2020 | 1:50 PM',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(20)),
                        )
                      ],
                    ),
                  ],
                ),
                Text('4H 25M',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(32),
                        color: Colors.grey[350]))
              ],
            ),
          ),
        ]));
  }
}
