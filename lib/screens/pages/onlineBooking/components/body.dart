import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:app/screens/pages/sharedComponents/expandedContainer.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool expandFlag = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Octicons.primitive_dot,
                  color: Colors.greenAccent[700],
                  size: ScreenUtil().setSp(35),
                ),
                Text('Available')
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Octicons.primitive_dot,
                  color: Colors.redAccent[700],
                  size: ScreenUtil().setSp(35),
                ),
                Text('Busy')
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Octicons.primitive_dot,
                  color: Colors.orangeAccent[700],
                  size: ScreenUtil().setSp(35),
                ),
                Text('Out of Service')
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(6),
                topLeft: Radius.circular(6),
                bottomLeft:
                    expandFlag ? Radius.circular(0) : Radius.circular(6),
                bottomRight:
                    expandFlag ? Radius.circular(0) : Radius.circular(6)),
            color: Color(0xFF1f1f1f),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Octicons.primitive_dot,
                    color: Colors.greenAccent[700],
                    size: ScreenUtil().setSp(35),
                  ),
                  Text(
                    'Standard'.toUpperCase(),
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.2,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('11/20'),
                  InkWell(
                      child: Icon(
                        expandFlag
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onTap: () {
                        setState(() {
                          expandFlag = !expandFlag;
                        });
                      }),
                ],
              )
            ],
          ),
        ),
        ExpandableContainer(
            expanded: expandFlag,
            expandedHeight: 330,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Wrap(children: PC()._pcWidget(context))]))
      ],
    ));
  }
}

void _showModalSheet(context, int pcIndex) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          padding: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: () {},
            color: Colors.greenAccent[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Login to PC$pcIndex',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        );
      });
}

class PC {
  static final available = Colors.greenAccent[700];
  static final busy = Colors.redAccent[700];
  static final outOfService = Colors.orangeAccent[700];

  _pcStatus(int pcIndex) {
    final List status = [available, busy, outOfService];
    if (pcIndex > 8) {
      return status[1];
    }
    return status[0];
  }

  List<Widget> _pcWidget(context) {
    List pcList = new List<Widget>();
    int pcIndex = 0;
    int pcNumber = 0;

    for (pcIndex = 0; pcIndex < 20; pcIndex++) {
      pcList.add(Container(
        width: 60,
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 5),
          onPressed: () {
            _showModalSheet(context, pcIndex);
          },
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Stack(
            children: <Widget>[
              Icon(
                Foundation.monitor,
                color: _pcStatus(pcIndex),
                size: 40,
              ),
              if (pcNumber < 9)
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Text(
                    '0${pcNumber += 1}',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: _pcStatus(pcIndex)),
                  ),
                )
              else
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Text(
                    '${pcNumber += 1}',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: _pcStatus(pcIndex)),
                  ),
                )
            ],
          ),
        ),
      ));
    }
    return pcList;
  }
}
