import 'package:app/screens/features/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../animations/fadeIn.dart';

class FeaturesScreen extends StatefulWidget {
  @override
  _FeaturesScreenState createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
