import 'package:app/screens/features/components/View.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/features/components/Controller.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FeaturesController features = new FeaturesController(context);

    double deviceHeight = MediaQuery.of(context).size.height;
    final devicepadding = MediaQuery.of(context).padding;
    final double containerHeight =
        deviceHeight - devicepadding.top - devicepadding.bottom;

    final pageController = PageController(
      initialPage: 0,
    );
    final currentPageNotifier = ValueNotifier<int>(0);

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: containerHeight,
      child:
          featuresView(context, pageController, currentPageNotifier, features),
    );
  }
}
