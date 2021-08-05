import 'package:flutter/material.dart';
import 'package:weather_daily/screens/bottom_nav.dart';
import 'package:weather_daily/screens/loading_screen.dart';
import 'package:weather_daily/services/location.dart';
import 'package:weather_daily/utilities/constants.dart';
import 'package:flutter/services.dart';

Location location = Location();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   getLocation();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      home: LoadingScreen(),
    );
  }
}
