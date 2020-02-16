import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';

profileSummaryWidget(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/Emblem_Iron.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color(0xFF1f1f1f).withOpacity(0.35), BlendMode.dstATop)),
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Color(0xFF1f1f1f),
      ),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      new CircleAvatar(
                          backgroundImage: AssetImage('assets/123.jpg'),
                          radius: 60.0),
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(8)),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Doublelift',
                        style: TextStyle(fontSize: ScreenUtil().setSp(40)),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '  Iron',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(32)),
                        ),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Theme.of(context).secondaryHeaderColor,
                            size: ScreenUtil().setSp(46),
                          ),
                          SizedBox(width: 2.0),
                          Text('5h 22m',
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(32)))
                        ],
                      ),
                      SizedBox(height: ScreenUtil().setHeight(8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            FontAwesome5Solid.coins,
                            color: Colors.amberAccent[700],
                            size: ScreenUtil().setSp(40),
                          ),
                          SizedBox(width: 3.0),
                          Text('100',
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(32)))
                        ],
                      ),
                      SizedBox(height: ScreenUtil().setHeight(8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Octicons.primitive_dot,
                            color: Colors.greenAccent[700],
                            size: ScreenUtil().setSp(48),
                          ),
                          SizedBox(width: 2.0),
                          Text('Online',
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(32)))
                        ],
                      ),
                    ]),
              )
            ],
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    new LinearPercentIndicator(
                      linearGradient: LinearGradient(
                          colors: [Colors.greenAccent[700], Colors.green[300]],
                          begin: Alignment.centerRight,
                          end: Alignment(-1.0, -1.0)),
                      width: ScreenUtil().setWidth(610),
                      animation: true,
                      animationDuration: 2000,
                      center: (Text('650 / 1000')),
                      lineHeight: ScreenUtil().setSp(35),
                      percent: 0.65,
                      backgroundColor: Colors.grey[800],
                      maskFilter: MaskFilter.blur(BlurStyle.solid, 2),
                    ),
                  ],
                )
              ])
        ],
      ),
    ),
  );
}
