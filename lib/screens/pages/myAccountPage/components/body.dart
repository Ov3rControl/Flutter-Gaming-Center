import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 210.0,
          floating: true,
          pinned: true,
          elevation: 50,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Doublelift',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 16.0,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Octicons.primitive_dot,
                        color: Colors.redAccent[700],
                        size: ScreenUtil().setSp(35),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            color: Colors.greenAccent[700]),
                        child: Text(
                          '850 Points',
                          style: TextStyle(
                              color: Colors.grey[100],
                              fontSize: ScreenUtil().setSp(18)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              background: Image.asset(
                'assets/123.jpg',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                // color: Theme.of(context).scaffoldBackgroundColor,
                // colorBlendMode: BlendMode.color,
              )),
          iconTheme: IconThemeData(
            color: Colors.grey[100],
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
            IconButton(
                icon: Icon(MaterialCommunityIcons.qrcode), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, '/accountInfo');
                }),
          ],
        ),
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverToBoxAdapter(
              child: Container(
            height: ScreenUtil().setHeight(1005),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Color(0xFF1f1f1f),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/Emblem_Iron.png",
                          height: 110,
                          width: 110,
                        ),
                        Text(
                          'Iron',
                          style: TextStyle(fontSize: ScreenUtil().setSp(50)),
                        )
                      ],
                    ),
                    new CircularPercentIndicator(
                      radius: 120.0,
                      lineWidth: 10.0,
                      percent: 0.65,
                      animation: true,
                      animationDuration: 2000,
                      linearGradient: LinearGradient(colors: [
                        Colors.greenAccent[700],
                        Colors.limeAccent[700]
                      ], begin: Alignment.center, end: Alignment(-1.0, -1.0)),
                      header: new Text('650 / 1000'),
                      center: new Image.asset(
                        "assets/Emblem_Bronze.png",
                        height: 65,
                        width: 65,
                        color: Color.fromRGBO(255, 255, 255, 0.65),
                        // colorBlendMode: BlendMode.modulate
                      ),
                      backgroundColor: Colors.grey[800],
                      maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Hours Left & Hours Spent Widget
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.greenAccent[700],
                          size: ScreenUtil().setSp(62),
                        ),
                        SizedBox(width: ScreenUtil().setHeight(21)),
                        Column(
                          children: <Widget>[
                            Text(
                              '5h 33m',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Hours Left',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(26),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          MaterialCommunityIcons.progress_clock,
                          color: Theme.of(context).secondaryHeaderColor,
                          size: ScreenUtil().setSp(62),
                        ),
                        SizedBox(width: ScreenUtil().setHeight(21)),
                        Column(
                          children: <Widget>[
                            Text(
                              '11h 33m',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Hours Spent',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(26),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30),

                // Points Earned & Points Spent
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesome5Solid.coins,
                          color: Colors.amberAccent[700],
                          size: ScreenUtil().setSp(62),
                        ),
                        SizedBox(width: ScreenUtil().setHeight(21)),
                        Column(
                          children: <Widget>[
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Points Earned',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(26),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          MaterialIcons.redeem,
                          color: Colors.orange,
                          size: ScreenUtil().setSp(62),
                        ),
                        SizedBox(width: ScreenUtil().setHeight(21)),
                        Column(
                          children: <Widget>[
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Points Spent',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(26),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30.0),
                // Member Rank & Member Highest Rank
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Entypo.trophy,
                          color: Colors.purpleAccent[700],
                          size: ScreenUtil().setSp(62),
                        ),
                        SizedBox(width: ScreenUtil().setHeight(21)),
                        Column(
                          children: <Widget>[
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Member Rank',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(26),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Ionicons.ios_ribbon,
                          color: Colors.blueAccent[700],
                          size: ScreenUtil().setSp(62),
                        ),
                        SizedBox(width: ScreenUtil().setHeight(21)),
                        Column(
                          children: <Widget>[
                            Text(
                              'Diamond',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Highest Rank',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(26),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                //SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Entypo.user,
                            color: Colors.blueGrey[700],
                            size: ScreenUtil().setSp(62),
                          ),
                          SizedBox(width: ScreenUtil().setHeight(21)),
                          Column(
                            children: <Widget>[
                              Text(
                                '09 Jan 2020 | 5:20 PM',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(32),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text('Member Last Seen',
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(26),
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            SimpleLineIcons.screen_desktop,
                            color: Colors.blueGrey[700],
                            size: ScreenUtil().setSp(62),
                          ),
                          SizedBox(width: ScreenUtil().setHeight(51)),
                          Column(
                            children: <Widget>[
                              Text(
                                'Standard | PC 01',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(32),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text('Member Last Seen PC',
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(26),
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Entypo.heart,
                            color: Colors.red,
                            size: ScreenUtil().setSp(62),
                          ),
                          SizedBox(width: ScreenUtil().setHeight(21)),
                          Column(
                            children: <Widget>[
                              Text(
                                '01 Jan 2020 | Season 1',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(32),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text('Member Since',
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(26),
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ],
    );
  }
}
