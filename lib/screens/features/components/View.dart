import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

featuresView(context, pageController, currentPageNotifier, features) {
  return PageView.builder(
      itemCount: features.items.length,
      controller: pageController,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              gradient: LinearGradient(
                  colors: features.gradiet(index),
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0)), //Gradient
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: features.iconTitle(index),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    features.items[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //Circle Avatar
                      Container(
                          width: 100.0,
                          height: 80.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '${features.price(index)}',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'L.E/Hour',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  //Text

                  //Two Column Table
                  DataTable(
                      horizontalMargin: ScreenUtil().setWidth(4),
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
                            Row(children: <Widget>[
                              Image(
                                image: AssetImage('assets/nvidia.png'),
                                width: ScreenUtil().setWidth(125),
                                height: ScreenUtil().setHeight(60),
                              ),
                              Text(
                                features.gpu[index],
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ]),
                          ),
                          DataCell(
                            Icon(FontAwesome.check, color: Colors.white),
                          ),
                        ]),
                        for (var rowItem = 0; rowItem <= 8; rowItem++)
                          features.dataTableRow(
                              index, rowItem, Foundation.monitor, true),
                      ]),

                  //Button
                  Container(
                    margin: EdgeInsets.only(bottom: 3.0),
                    padding: const EdgeInsets.only(top: 3.0),
                    child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          'Packages Price',
                          style: TextStyle(
                            color: Colors.black87,
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
          ),
        );
      },
      onPageChanged: (int index) {
        currentPageNotifier.value = index;
      });
}
