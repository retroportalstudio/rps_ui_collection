import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rps_ui_e2/screens/landing_screen.dart';
import 'package:rps_ui_e2/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: COLOR_GREEN));
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Screen 2',
        theme: ThemeData(textTheme: defaultText),
        home: LandingScreen(),
      );
    });
  }
}
