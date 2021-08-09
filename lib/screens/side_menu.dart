import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_daily/utilities/constants.dart';

class WeatherTipScreen extends StatefulWidget {
  @override
  _WeatherTipScreenState createState() => _WeatherTipScreenState();
}

class _WeatherTipScreenState extends State<WeatherTipScreen> {
  getRandomElement<tip_list>(List<tip_list> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kScaffoldBackgroundColor,
      child: ListView(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Weather ',
                    style: TextStyle(fontSize: 30),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Tips',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  color: kScaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF3A393E),
                      spreadRadius: 1.0,
                      blurRadius: 5,
                      offset: Offset(4.0, 4.0),
                    ),
                    BoxShadow(
                      color: Colors.grey.shade700,
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(-3.0, -3.0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          getRandomElement(tipList),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  getRandomElement(tipList);
                });
              },
              child: Text('More Tips'),
            ),
          ),
        ],
      ),
    );
  }
}
