import 'package:flutter/material.dart';

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final double collapsedHeight;
  final double expandedHeight;
  final Widget child;

  ExpandableContainer({
    @required this.child,
    this.collapsedHeight = 0.0,
    this.expandedHeight = 250.0,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    return new AnimatedContainer(
      duration: new Duration(milliseconds: 500),
      curve: Curves.easeInCubic,
      height: expanded ? expandedHeight : collapsedHeight,
      child: new Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6)),
          color: Color(0xFF1f1f1f),
        ),
        child: child,
      ),
    );
  }
}
