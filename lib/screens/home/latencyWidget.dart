import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

latencyWidget(context) {
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
                      color: Theme.of(context).secondaryHeaderColor,
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
