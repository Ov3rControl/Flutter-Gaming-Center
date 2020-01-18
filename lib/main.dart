import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import './theme/styles.dart';
import './routes.dart';

void main() => runApp(
      MyApp(),
    );

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Arena Gaming Center';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //builder: DevicePreview.appBuilder,
      theme: appTheme(),
      title: _title,
      initialRoute: '/',
      routes: routes,
    );
  }
}
