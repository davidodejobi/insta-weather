import 'package:flutter/material.dart';
import 'package:weather_daily/utilities/Rain.dart';
import 'package:weather_daily/utilities/info_scrollable.dart';
import 'package:weather_daily/utilities/overcast.dart';
import 'package:weather_daily/utilities/sun.dart';

class WeatherScreen extends StatelessWidget {
  final String text;
  final int temp;
  final String weatherType;
  final String icon;
  final int widgetCondition;
  final double minTemp;
  final double maxTemp;
  final int humidity;
  final int feelsLike;
  final int windSpeed;

  WeatherScreen({
    required this.windSpeed,
    required this.humidity,
    required this.feelsLike,
    required this.maxTemp,
    required this.minTemp,
    required this.widgetCondition,
    required this.text,
    required this.temp,
    required this.weatherType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              condition(checkTemperature: widgetCondition),
              Positioned(
                bottom: 0,
                right: 30,
                child: Text(text,
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 15,
                      color: Colors.grey,
                    )),
              ),
              Positioned(
                bottom: 0,
                left: 30,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            icon,
                            style: TextStyle(fontSize: 20),
                          )),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text(
                          weatherType.toLowerCase(),
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        child: Text(
                          '$temp°C',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: InfoScrollable(
            windSpeed: windSpeed,
            humidity: humidity,
            feelsLike: feelsLike,
            minTemp: minTemp,
            maxTemp: maxTemp,
          ),
        ),
      ],
    );
  }

// Function that will check the current temperature and based on that display a certain widget
  Widget condition({required int checkTemperature}) {
    // other logic
    // Declare a widget variable,
    // it will be assigned later according
    // to the condition
    Widget widget;

    if (checkTemperature < 700) {
      return widget = Rainy();
    } else if (checkTemperature > 700 && checkTemperature < 800) {
      return widget = OverCast();
    } else if (checkTemperature > 800 && checkTemperature < 805) {
      return widget = OverCast();
    } else if (checkTemperature == 800) {
      return widget = Sunny();
    }

    widget = Container();
    return widget;
  }
}
