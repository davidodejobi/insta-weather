import 'package:flutter/material.dart';
import 'package:weather_daily/screens/bottom_nav.dart';
import 'package:weather_daily/utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      home: BottomNavControl(),
    );
  }
}
