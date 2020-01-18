import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
      MyApp(),
    );

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

int orange = 0xffFE5003;

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 5.0,
          backgroundColor: Color(0xff18181C),
          title: FadeIn(
              4.0,
              Row(
                children: <Widget>[
                  Icon(
                    Icons.polymer,
                    color: Color(orange),
                    size: 35.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 10, 8),
                      child: CircleAvatar(
                        backgroundImage: ExactAssetImage('assets/Gold.jpg'),
                      ),
                      decoration: new BoxDecoration(
                        border: new Border.all(
                          color: Color(orange),
                          width: 1.3,
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
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
                                color: Color(orange),
                                size: 12.0,
                              ),
                              SizedBox(width: 2.0),
                              Text('Ov3rControl',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 12.0))
                            ],
                          ),
                          SizedBox(height: 1.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Color(orange),
                                size: 12.0,
                              ),
                              SizedBox(width: 2.0),
                              Text('5h 32m', style: TextStyle(fontSize: 12.0))
                            ],
                          ),
                          SizedBox(height: 1.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.trip_origin,
                                color: Color(orange),
                                size: 12.0,
                              ),
                              SizedBox(width: 2.0),
                              Text('150', style: TextStyle(fontSize: 12.0))
                            ],
                          ),
                        ]),
                  )
                ],
              )),
          actions: <Widget>[
            FadeIn(
                4.0,
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.qrcode,
                    color: Color(orange),
                    size: 30.0,
                  ),
                  tooltip: 'QRCode Login',
                  onPressed: () {},
                ))
          ],
        ),
        body: Column(children: <Widget>[
          FadeIn(5.0, _news(context)),
          FadeIn(6.0, _pingSection(context))
        ]),
        backgroundColor: Color(0xff201F23),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff201F23),
          color: Color(orange),
          height: 52.0,
          index: 2,
          animationDuration: Duration(milliseconds: 500),
          items: <Widget>[
            Icon(Icons.equalizer, size: 26),
            Icon(Icons.memory, size: 30),
            Icon(Icons.polymer, size: 30),
            Icon(Icons.slow_motion_video, size: 30),
            Icon(Icons.account_circle, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        drawer: Drawer());
  }
}

final _pageController = PageController(
  initialPage: 0,
  viewportFraction: 0.9,
);
final _currentPageNotifier = ValueNotifier<int>(0);
final _items = [
  Colors.blue,
  Colors.green,
  Colors.green,
];
_pingSection(context) {
  MediaQueryData queryData;
  queryData = MediaQuery.of(context);
  final deviceWidth = queryData.size.width;
  final deviceHeight = queryData.size.height;
  final _boxHeight = deviceHeight / 3.7;

  return Container(
      height: ScreenUtil().setHeight(330),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(26, 10, 26, 10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Live Internet Status',
                      style: TextStyle(
                          height: 2,
                          fontSize: ScreenUtil().setSp(26),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 2.0),
                    Icon(
                      Icons.wifi,
                      size: ScreenUtil().setSp(60),
                      color: Color(orange),
                    ),
                  ]),
              Divider(
                color: Colors.grey,
              ),
              DataTable(
                  columnSpacing: ScreenUtil().setSp(134),
                  horizontalMargin: ScreenUtil().setWidth(6),
                  headingRowHeight: ScreenUtil().setHeight(50),
                  dataRowHeight: ScreenUtil().setHeight(60),
                  columns: [
                    DataColumn(
                      label: Text('Con'),
                    ),
                    DataColumn(
                      label: Text('Latency'),
                    ),
                    DataColumn(
                      label: Text('Status'),
                    )
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('G1')),
                        DataCell(Text('99 ms',
                            style: TextStyle(color: Colors.green))),
                        DataCell(Text('Online',
                            style: TextStyle(color: Colors.green)))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('G2')),
                        DataCell(Text('81 ms',
                            style: TextStyle(color: Colors.green))),
                        DataCell(Text('Online',
                            style: TextStyle(color: Colors.green)))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('G3')),
                        DataCell(
                            Text('N/A', style: TextStyle(color: Colors.red))),
                        DataCell(Text('Offline',
                            style: TextStyle(color: Colors.red)))
                      ],
                    ),
                  ]),
            ],
          ),
        ),
      ));
}

_news(context) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          _buildPageView(context),
          _buildCircleIndicator(),
        ],
      ),
    ],
  );
}

_buildPageView(context) {
  MediaQueryData queryData;
  queryData = MediaQuery.of(context);
  final deviceWidth = queryData.size.width;
  final deviceHeight = queryData.size.height;
  final _boxHeight = deviceHeight / 3;
  return Container(
    height: ScreenUtil().setHeight(440),
    child: PageView.builder(
        itemCount: _items.length,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            //color: Color(orange),
            margin: EdgeInsets.fromLTRB(10, 20, 10, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 8,
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                    width: double.infinity,
                    child: ClipRRect(
                        borderRadius: new BorderRadius.all(Radius.circular(4)),
                        child: Stack(children: <Widget>[
                          CachedNetworkImage(
                            imageUrl:
                                "https://hdqwalls.com/wallpapers/sylas-league-of-legends-4k-nl.jpg",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.red, BlendMode.colorBurn)),
                              ),
                            ),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          Center(
                              child: FadeIn(
                                  6.0,
                                  Text(
                                    "League of Legends Tournment",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(38)),
                                  ))),
                        ])),
                  ),
                ),
                new Expanded(
                    flex: 2,
                    child: new Container(
                      child: MaterialButton(
                        minWidth: double.infinity,
                        color: Color(orange),
                        onPressed: () {},
                        child: Text(
                          'Read More',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(32)),
                        ),
                      ),
                      color: Colors.green,
                    ))
              ],
            ),
          );
        },
        onPageChanged: (int index) {
          _currentPageNotifier.value = index;
        }),
  );
}

_buildCircleIndicator() {
  return Positioned(
    left: 0.0,
    right: 0.0,
    bottom: 0.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CirclePageIndicator(
        itemCount: _items.length,
        currentPageNotifier: _currentPageNotifier,
      ),
    ),
  );
}

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}
