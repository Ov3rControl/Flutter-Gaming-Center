import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(20.0),
        physics: ScrollPhysics(),
        child: Column(children: <Widget>[
          SizedBox(height: ScreenUtil().setHeight(30)),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Live Internet Status',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10),
                  height: ScreenUtil().setHeight(110),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFF1f1f1f),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Network [1]'),
                          Text('88ms',
                              style: TextStyle(color: Colors.greenAccent[700])),
                          Icon(
                            Octicons.primitive_dot,
                            color: Colors.greenAccent[700],
                            size: ScreenUtil().setSp(30),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Network [2]'),
                          Text('128ms',
                              style: TextStyle(color: Colors.orange[800])),
                          Icon(
                            Octicons.primitive_dot,
                            color: Colors.orange[800],
                            size: ScreenUtil().setSp(30),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 10.0),
              Text(
                'Available Games',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFF1f1f1f),
                  ),
                  child: Text(
                    'League of Legends',
                    textScaleFactor: 1.2,
                  )),
              Container(
                margin: EdgeInsets.only(
                    bottom: ScreenUtil().setHeight(110),
                    top: ScreenUtil().setHeight(25)),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Didn\'t Find Your Game? Request It HERE!',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(650),
                          child: TextField(
                            textAlign: TextAlign.center,
                            textCapitalization: TextCapitalization.words,
                            style: TextStyle(color: Colors.grey[700]),
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[700]),
                                ),
                                hintText: 'Enter Requested Game',
                                hintStyle: TextStyle(color: Colors.grey[700])),
                          ),
                        ),
                        RaisedButton(
                            color: Colors.grey,
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              // ListView.builder(
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: 6,
              //     itemBuilder: (context, index) {
              //       return Container(
              //           alignment: Alignment.centerLeft,
              //           margin: EdgeInsets.only(top: 10),
              //           width: ScreenUtil().setWidth(650),
              //           height: ScreenUtil().setHeight(110),
              //           padding: EdgeInsets.all(8),
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.all(Radius.circular(6)),
              //             color: Color(0xFF1f1f1f),
              //           ),
              //           child: Row(
              //             children: <Widget>[
              //               Image(
              //                 image: AssetImage('assets/unnamed.png'),
              //                 width: ScreenUtil().setWidth(160),
              //                 height: ScreenUtil().setHeight(150),
              //               ),
              //               Text(
              //                 'League of Legends',
              //                 style: TextStyle(fontSize: 20),
              //               )
              //             ],
              //           ));
              //     }),
            ],
          ),
        ]));
  }
}
