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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Standard | 2.5 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '09 Jan 2020 | 5:15 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('25 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
          SizedBox(height: 3.0),
          new Divider(
            color: Colors.grey[850],
            endIndent: 100,
            indent: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Color(0xFFA8A9AD),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Premium | 5 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '20 Jan 2020 | 5:15 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('50 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
          SizedBox(height: 8.0),
          new Divider(
            color: Colors.grey[850],
            endIndent: 100,
            indent: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Color(0xFFDAA520),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Team Room | 10 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '26 Jan 2020 | 5:15 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('150 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
          SizedBox(height: 3.0),
          new Divider(
            color: Colors.grey[850],
            endIndent: 100,
            indent: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Color(0xFFA8A9AD),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Premium | 5 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '20 Jan 2020 | 5:15 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('50 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
          SizedBox(height: 3.0),
          new Divider(
            color: Colors.grey[850],
            endIndent: 100,
            indent: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Color(0xFFA8A9AD),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Premium | 5 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '20 Jan 2020 | 5:15 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('50 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
          SizedBox(height: 3.0),
          new Divider(
            color: Colors.grey[850],
            endIndent: 100,
            indent: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Color(0xFFA8A9AD),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Premium | 5 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '20 Jan 2020 | 5:15 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('50 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
          SizedBox(height: 3.0),
          new Divider(
            color: Colors.grey[850],
            endIndent: 100,
            indent: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.star_three_points,
                    color: Color(0xFFDAA520),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Team Room | 10 Hours',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Colors.grey[350]),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '28 Jan 2020 | 7:26 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(20)),
                      )
                    ],
                  ),
                ],
              ),
              Text('150 L.E',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      color: Colors.grey[350]))
            ],
          ),
        ]));
  }
}
