import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

locationWidget(context) {
  return Container(
      height: ScreenUtil().setHeight(330),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(26, 10, 26, 10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        ),
      ));
}
