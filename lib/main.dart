import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import './theme/styles.dart';
import './routes.dart';

void main() => runApp(
      // DevicePreview(
      //   builder: (context) => MyApp(),
      // ),
      MyApp(),
    );

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Arena Gaming Center';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.of(context).locale, // <--- Add the locale
      // builder: DevicePreview.appBuilder, // <--- Add the builder
      theme: appTheme(),
      title: _title,
      initialRoute: '/',
      routes: routes,
    );
  }
}
