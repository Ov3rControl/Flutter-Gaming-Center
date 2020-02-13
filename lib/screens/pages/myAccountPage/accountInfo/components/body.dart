import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Profile Image Sectiono
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                minWidth: 5,
                padding: EdgeInsets.all(15),
                onPressed: () {},
                color: Colors.black,
                textColor: Colors.white,
                child: Icon(
                  Icons.camera_alt,
                  size: 30,
                ),
                elevation: 5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0)),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/123.jpg',
                  height: 125.0,
                  width: 125.0,
                  fit: BoxFit.cover,
                ),
              ),
              MaterialButton(
                minWidth: 5,
                padding: EdgeInsets.all(15),
                onPressed: () {},
                color: Colors.black,
                textColor: Colors.white,
                child: Icon(
                  Entypo.trash,
                  size: 28,
                ),
                elevation: 5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0)),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Full Name'.toUpperCase(),
                textScaleFactor: 1.1,
              ),
              Container(
                width: ScreenUtil().setWidth(650),
                height: ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top: 10),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFF1E2326),
                ),
                child: TextField(
                  controller: new TextEditingController(text: 'Peng Yiliang'),
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      decoration: TextDecoration.none,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).secondaryHeaderColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Full Name'.toUpperCase(),
                    hintStyle: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Username'.toUpperCase(),
                textScaleFactor: 1.1,
              ),
              Container(
                width: ScreenUtil().setWidth(650),
                height: ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top: 10),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFF1E2326),
                ),
                child: TextField(
                  controller: new TextEditingController(text: 'Doublelift'),
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      decoration: TextDecoration.none,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).secondaryHeaderColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username'.toUpperCase(),
                    hintStyle: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Password'.toUpperCase(),
                textScaleFactor: 1.1,
              ),
              Container(
                width: ScreenUtil().setWidth(650),
                height: ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top: 10),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFF1E2326),
                ),
                child: TextFormField(
                  controller: new TextEditingController(text: 'Password'),
                  obscureText: true,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      decoration: TextDecoration.none,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).secondaryHeaderColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'E-Mail'.toUpperCase(),
                textScaleFactor: 1.1,
              ),
              Container(
                width: ScreenUtil().setWidth(650),
                height: ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top: 10),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFF1E2326),
                ),
                child: TextField(
                  controller: new TextEditingController(
                      text: 'PengYiliang@E-Sports.com'),
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      decoration: TextDecoration.none,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).secondaryHeaderColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'E-Mail'.toUpperCase(),
                    hintStyle: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mobile Number'.toUpperCase(),
                textScaleFactor: 1.1,
              ),
              Container(
                width: ScreenUtil().setWidth(650),
                height: ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top: 10),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFF1E2326),
                ),
                child: TextField(
                  controller: new TextEditingController(text: '011245221785'),
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      decoration: TextDecoration.none,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).secondaryHeaderColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mobile Number'.toUpperCase(),
                    hintStyle: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Birth date'.toUpperCase(),
                textScaleFactor: 1.1,
              ),
              Container(
                width: ScreenUtil().setWidth(650),
                height: ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top: 10),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFF1E2326),
                ),
                child: TextField(
                  controller: new TextEditingController(text: '07/02/1997'),
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setSp(32),
                      decoration: TextDecoration.none,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).secondaryHeaderColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Birth Date'.toUpperCase(),
                    hintStyle: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor),
                  ),
                ),
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.fromLTRB(9, 18, 9, 26),
            child: new MaterialButton(
                child: Text(
                  "Save".toUpperCase(),
                  textScaleFactor: 1.1,
                  style: const TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                elevation: 4.0,
                minWidth: ScreenUtil().setWidth(190),
                height: ScreenUtil().setHeight(70),
                color: Theme.of(context).secondaryHeaderColor,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6))),
          ),
        ],
      ),
    );
  }
}
