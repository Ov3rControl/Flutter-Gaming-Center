import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: ScreenUtil().setHeight(1100),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: ScreenUtil().setWidth(700),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0)), //Gradient
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              child: Text(
                                'Standard',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //Circle Avatar
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                width: 140.0,
                                height: 120.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '10 L.E',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: Color(0xff8d70fe),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '/Hour',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Color(0xff8d70fe),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),

                          //Two Column Table
                          DataTable(
                            //columnSpacing: ScreenUtil().setSp(134),
                            horizontalMargin: ScreenUtil().setWidth(4),
                            //dataRowHeight: ScreenUtil().setHeight(80),
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(''),
                              ),
                              DataColumn(
                                label: Text(''),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Foundation.monitor, "[144 HZ] MSI Optix"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  Row(children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/nvidia.png'),
                                      width: ScreenUtil().setWidth(110),
                                      height: ScreenUtil().setHeight(60),
                                    ),
                                    Text(
                                      '    GTX 1070 Ti 8GB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    )
                                  ]),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(Icons.memory, "Intel I5 9400F"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(FontAwesome5Solid.memory,
                                      "2x 8GB Ram (HypreX)"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Entypo.mouse, "Logictech G502 Hero"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(Entypo.keyboard, "Corsair K63"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(Icons.headset_mic,
                                      "HypreX Cloud Stinger"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Icons.public, "Internet Browsing"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Icons.video_label, "HD Streaming"),
                                ),
                                DataCell(
                                  Icon(
                                    FontAwesome.times,
                                    color: Colors.white54,
                                  ),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      FontAwesome5Solid.chair, "Gaming Chair"),
                                ),
                                DataCell(
                                  Icon(
                                    FontAwesome.times,
                                    color: Colors.white54,
                                  ),
                                ),
                              ])
                            ],
                          ),

                          //Button
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: RaisedButton(
                                color: new Color(0xffffffff),
                                child: Text(
                                  'Packages Price',
                                  style: TextStyle(
                                    color: new Color(0xff6200ee),
                                  ),
                                ),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Second ListView
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: ScreenUtil().setWidth(721),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [Color(0xffebac38), Color(0xffde4d2a)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -2.0)), //Gradient
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Icon(
                                              FontAwesome.dropbox,
                                              color: new Color(0xffffffff),
                                              size: 40.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Plus',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Text(
                                              '\u00244.99/month',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Two Column Table
                          DataTable(
                            //columnSpacing: ScreenUtil().setSp(134),
                            horizontalMargin: ScreenUtil().setWidth(4),
                            //dataRowHeight: ScreenUtil().setHeight(80),
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(''),
                              ),
                              DataColumn(
                                label: Text(''),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Foundation.monitor, "[144 HZ] MSI Optix"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  Row(children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/nvidia.png'),
                                      width: ScreenUtil().setWidth(110),
                                      height: ScreenUtil().setHeight(60),
                                    ),
                                    Text(
                                      '    GTX 1070 Ti 8GB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    )
                                  ]),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(Icons.memory, "Intel I5 9400F"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(FontAwesome5Solid.memory,
                                      "2x 8GB Ram (HypreX)"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Entypo.mouse, "Logictech G502 Hero"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(Entypo.keyboard, "Corsair K63"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(Icons.headset_mic,
                                      "HypreX Cloud Stinger"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Icons.public, "Internet Browsing"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      Icons.video_label, "HD Streaming"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ]),
                              DataRow(cells: <DataCell>[
                                DataCell(
                                  myRowDataIcon(
                                      FontAwesome5Solid.chair, "Gaming Chair"),
                                ),
                                DataCell(
                                  Icon(FontAwesome.check,
                                      color: new Color(0xffffffff)),
                                ),
                              ])
                            ],
                          ),

                          //Button
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                                color: new Color(0xffffffff),
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(
                                    color: new Color(0xffde4d2a),
                                  ),
                                ),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Third ListView
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: ScreenUtil().setWidth(701),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [Color(0xffcb3a57), Color(0xffcb3a57)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0)), //Gradient
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Text
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Icon(
                                            FontAwesome.soundcloud,
                                            color: new Color(0xffffffff),
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Text(
                                            'Flex',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Text(
                                            '\u00245.99/month',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Two Column Table
                        DataTable(
                          columns: <DataColumn>[
                            DataColumn(
                              label: Text(''),
                            ),
                            DataColumn(
                              label: Text(''),
                            ),
                          ],
                          rows: <DataRow>[
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(
                                  FontAwesome.check,
                                  color: Colors.white,
                                ),
                              ),
                              DataCell(
                                Text(
                                  'Smart synchronization',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(
                                  FontAwesome.check,
                                  color: Colors.white,
                                ),
                              ),
                              DataCell(
                                Text(
                                  'Full text search',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(FontAwesome.check,
                                    color: new Color(0xffffffff)),
                              ),
                              DataCell(
                                Text(
                                  'Folders without connection',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(FontAwesome.check,
                                    color: new Color(0xffffffff)),
                              ),
                              DataCell(
                                Text(
                                  'Uploads from camera',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(FontAwesome.check,
                                    color: new Color(0xffffffff)),
                              ),
                              DataCell(
                                Text(
                                  'Scanning of documents',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(
                                  FontAwesome.times,
                                  color: Colors.white54,
                                ),
                              ),
                              DataCell(
                                Text(
                                  '24/7 Support',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: <DataCell>[
                              DataCell(
                                Icon(FontAwesome.check,
                                    color: new Color(0xffffffff)),
                              ),
                              DataCell(
                                Text(
                                  'Custom Email',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),

                        //Button
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              color: new Color(0xffffffff),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: new Color(0xffcb3a57),
                                ),
                              ),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

ListTile myRowDataIcon(IconData iconVal, String rowVal) {
  return ListTile(
    leading: Icon(iconVal, color: new Color(0xffffffff)),
    title: Text(
      rowVal,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
