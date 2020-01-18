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
