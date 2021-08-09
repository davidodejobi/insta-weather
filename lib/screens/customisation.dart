import 'package:flutter/material.dart';
import 'package:weather_daily/utilities/constants.dart';

class Customization extends StatefulWidget {
  @override
  _CustomizationState createState() => _CustomizationState();
}

class _CustomizationState extends State<Customization> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kScaffoldBackgroundColor,
      child: Center(child: Text('Hello')),
    );
  }
}
