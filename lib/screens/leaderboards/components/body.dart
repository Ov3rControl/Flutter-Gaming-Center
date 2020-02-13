import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(height: ScreenUtil().setHeight(30)),
      Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Entypo.trophy,
                color: Colors.amber[600],
                size: 20,
              ),
              SizedBox(width: 3.0),
              Text(
                'Leaderboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5),
              ),
            ],
          )),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.grey[500],
                  endRadius: 50.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 1000),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[500],
                        radius: 35.0,
                        child: CircleAvatar(
                          radius: 33.0,
                          backgroundImage: AssetImage("assets/2.png"),
                        ),
                      )),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
                AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.amberAccent[700],
                  endRadius: 80.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 1000),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.amberAccent,
                        radius: 50.0,
                        child: CircleAvatar(
                          radius: 48.0,
                          backgroundImage: AssetImage("assets/123.jpg"),
                        ),
                      )),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
                AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.red,
                  endRadius: 50.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 1000),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffcd5832),
                        radius: 35.0,
                        child: CircleAvatar(
                          radius: 33.0,
                          backgroundImage: AssetImage("assets/3.png"),
                        ),
                      )),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                    width: ScreenUtil().setWidth(650),
                    height: ScreenUtil().setHeight(110),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xFF1f1f1f),
                        gradient: LinearGradient(
                            colors: [Color(0xFF1f1f1f), Color(0xffe1ad21)],
                            begin: Alignment.centerRight,
                            end: Alignment(-1.0, -1.0))),
                    child: Row(
                      children: <Widget>[
                        Text('1'),
                        SizedBox(width: 10.0),
                        new CircleAvatar(
                            backgroundImage: AssetImage('assets/123.jpg'),
                            radius: 20.0),
                        SizedBox(width: 10.0),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Doublelift'),
                              SizedBox(height: 3.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber[600],
                                    size: 16,
                                  ),
                                  SizedBox(width: 3.0),
                                  Text(
                                    '650',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                    width: ScreenUtil().setWidth(650),
                    height: ScreenUtil().setHeight(110),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xFF1f1f1f),
                        gradient: LinearGradient(
                            colors: [Color(0xFF1f1f1f), Colors.grey[500]],
                            begin: Alignment.centerRight,
                            end: Alignment(-2.0, -1.0))),
                    child: Row(
                      children: <Widget>[
                        Text('2'),
                        SizedBox(width: 10.0),
                        new CircleAvatar(
                            backgroundImage: AssetImage('assets/2.png'),
                            radius: 20.0),
                        SizedBox(width: 10.0),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Bjergsen'),
                              SizedBox(height: 3.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber[600],
                                    size: 16,
                                  ),
                                  SizedBox(width: 3.0),
                                  Text(
                                    '500',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                    width: ScreenUtil().setWidth(650),
                    height: ScreenUtil().setHeight(110),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xFF1f1f1f),
                        gradient: LinearGradient(
                            colors: [Color(0xFF1f1f1f), Color(0xffcd5832)],
                            begin: Alignment.centerRight,
                            end: Alignment(-2.0, -1.0))),
                    child: Row(
                      children: <Widget>[
                        Text('3'),
                        SizedBox(width: 6.0),
                        new CircleAvatar(
                            backgroundImage: AssetImage('assets/3.png'),
                            radius: 20.0),
                        SizedBox(width: 10.0),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Wildturtle'),
                              SizedBox(height: 3.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber[600],
                                    size: 16,
                                  ),
                                  SizedBox(width: 3.0),
                                  Text(
                                    '400',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                    width: ScreenUtil().setWidth(650),
                    height: ScreenUtil().setHeight(110),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xFF1f1f1f),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text('4'),
                        SizedBox(width: 6.0),
                        new CircleAvatar(
                            foregroundColor: Colors.black,
                            backgroundImage: AssetImage('assets/profile.png'),
                            radius: 20.0),
                        SizedBox(width: 10.0),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Random Player'),
                              SizedBox(height: 3.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber[600],
                                    size: 16,
                                  ),
                                  SizedBox(width: 3.0),
                                  Text(
                                    '200',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
