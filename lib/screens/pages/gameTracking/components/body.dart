import 'package:app/screens/pages/sharedComponents/expandedContainer.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
        Container(
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
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/csgo.png',
                  height: 60,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'CS:GO',
                textAlign: TextAlign.center,
                textScaleFactor: 1.0,
                overflow: TextOverflow.clip,
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
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
          ),
        ),
        ExpandableContainer(
          expanded: expandFlag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 8.0,
                    percent: 1.0,
                    animation: true,
                    animationDuration: 1000,
                    linearGradient: LinearGradient(
                        colors: [Colors.blueAccent[700], Colors.lightBlue[300]],
                        begin: Alignment.center,
                        end: Alignment(-1.0, -1.0)),
                    header: Text('Played Matches'),
                    center: Text(
                      '5',
                      textScaleFactor: 2,
                    ),
                    backgroundColor: Colors.grey[800],
                    maskFilter: MaskFilter.blur(BlurStyle.solid, 2),
                  ),
                  CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 8.0,
                    percent: 0.80,
                    animation: true,
                    animationDuration: 2000,
                    linearGradient: LinearGradient(colors: [
                      Colors.greenAccent[700],
                      Colors.limeAccent[700]
                    ], begin: Alignment.center, end: Alignment(-1.0, -1.0)),
                    header: Text('Win Rate'),
                    center: Text(
                      '80%',
                      textScaleFactor: 1.5,
                    ),
                    backgroundColor: Colors.grey[800],
                    maskFilter: MaskFilter.blur(BlurStyle.solid, 2),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 6.0,
                    percent: 1.0,
                    animation: true,
                    animationDuration: 1000,
                    linearGradient: LinearGradient(
                        colors: [Colors.green, Colors.green[900]],
                        begin: Alignment.center,
                        end: Alignment(-1.0, -1.0)),
                    header: Text('Wins',
                        textScaleFactor: 0.9,
                        style: TextStyle(color: Colors.grey[300])),
                    center: Text(
                      '4',
                      textScaleFactor: 1.5,
                    ),
                    backgroundColor: Colors.grey[800],
                    maskFilter: MaskFilter.blur(BlurStyle.solid, 2),
                  ),
                  CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 6.0,
                    percent: 1.0,
                    animation: true,
                    animationDuration: 1000,
                    linearGradient: LinearGradient(
                        colors: [Colors.red[600], Colors.redAccent[700]],
                        begin: Alignment.center,
                        end: Alignment(-1.0, -1.0)),
                    header: Text('Losses',
                        textScaleFactor: 0.9,
                        style: TextStyle(color: Colors.grey[300])),
                    center: Text(
                      '1',
                      textScaleFactor: 1.5,
                    ),
                    backgroundColor: Colors.grey[800],
                    maskFilter: MaskFilter.blur(BlurStyle.solid, 2),
                  ),
                  CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 6.0,
                    percent: 1.0,
                    animation: true,
                    animationDuration: 1000,
                    linearGradient: LinearGradient(
                        colors: [Colors.amber, Colors.amberAccent[700]],
                        begin: Alignment.center,
                        end: Alignment(-1.0, -1.0)),
                    header: Text(
                      'Earned Points',
                      textScaleFactor: 0.9,
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                    center: Text(
                      '80',
                      textScaleFactor: 1.5,
                    ),
                    backgroundColor: Colors.grey[800],
                    maskFilter: MaskFilter.blur(BlurStyle.solid, 2),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
