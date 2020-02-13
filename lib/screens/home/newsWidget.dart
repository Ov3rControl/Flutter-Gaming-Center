import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../animations/fadeIn.dart';

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
newsWidget(context) {
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
  double smallDeviceHeight = MediaQuery.of(context).size.height;
  double smalldevice = smallDeviceHeight < 649 ? smallDeviceHeight / 31 : 0;
  double iphone8 = smallDeviceHeight < 700 && smallDeviceHeight > 650
      ? smallDeviceHeight / 80
      : 0;
  return Container(
    height: ScreenUtil().setHeight(440),
    child: PageView.builder(
        itemCount: _items.length,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            color: Theme.of(context).secondaryHeaderColor,
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
                            filterQuality: FilterQuality.high,
                            imageUrl:
                                "https://hdqwalls.com/wallpapers/sylas-league-of-legends-4k-nl.jpg",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Theme.of(context).secondaryHeaderColor,
                                        BlendMode.color)),
                              ),
                            ),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          Container(
                              margin: EdgeInsets.all(4),
                              width: ScreenUtil().setWidth(150),
                              height: ScreenUtil()
                                  .setHeight(54 + smalldevice + iphone8),
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'EVENT',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                color: Theme.of(context).secondaryHeaderColor,
                              )),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                                margin: EdgeInsets.all(8),
                                child: Row(children: <Widget>[
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.white,
                                    size: ScreenUtil().setSp(40),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '3 February 2020',
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(30)),
                                  )
                                ])),
                          ),
                          Center(
                              child: FadeIn(
                                  2.0,
                                  Text(
                                    "League of Legends Tournament",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
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
                        color: Theme.of(context).secondaryHeaderColor,
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
