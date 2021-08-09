import 'package:flutter/material.dart';
import 'package:weather_daily/utilities/constants.dart';

class CitySearch extends StatefulWidget {
  @override
  _CitySearchState createState() => _CitySearchState();
}

class _CitySearchState extends State<CitySearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kScaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          onEditingComplete: () {},
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            ),
            labelText: 'Search City',
            labelStyle: TextStyle(color: Colors.amber),
            fillColor: Colors.grey.shade900,
            filled: true,
          ),
        ),
      ),
    );
  }
}
