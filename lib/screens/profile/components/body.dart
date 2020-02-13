import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(100), right: ScreenUtil().setWidth(100)),
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: ScreenUtil().setHeight(90)),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/myAccountPage');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          Octicons.person,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'My Account',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/gameTracking');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          Ionicons.ios_stats,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Game Tracking',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/paymentHistory');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          Icons.payment,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Payment History',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/loginActivity');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          SimpleLineIcons.screen_desktop,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Login Activity',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/onlineBooking');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          MaterialCommunityIcons.calendar_plus,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Online Booking',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              /* ... */
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          FontAwesome5Solid.coins,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Redeem Points',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              /* ... */
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Location',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              /* ... */
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          AntDesign.customerservice,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Help & Support',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
          SizedBox(height: 11.0),
          InkWell(
            onTap: () {
              /* ... */
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 10),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey[800]),
                        ),
                        child: Icon(
                          MaterialCommunityIcons.logout,
                          color: Colors.white70,
                          size: 28,
                        )),
                    SizedBox(width: 10),
                    Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(32)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Entypo.chevron_right,
                        color: Colors.grey[400], size: ScreenUtil().setSp(42))
                  ],
                )
              ],
            ),
            highlightColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
