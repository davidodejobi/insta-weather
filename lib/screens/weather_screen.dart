import 'package:flutter/material.dart';
import 'package:weather_daily/services/location.dart';
import 'package:weather_daily/utilities/Rain.dart';
import 'package:weather_daily/utilities/info_scrollable.dart';
import 'package:weather_daily/utilities/overcast.dart';
import 'package:weather_daily/utilities/sun.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.locationWeather});
  final locationWeather;
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    getLocation();

    super.initState();
  }

  void getLocation() async {
    Location location = Location();
    // await location.getData();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          condition(checkTemperature: 20),
          InfoScrollable(),
        ],
      ),
    );
  }

// Function that will check the current temperature and based on that display a certain widget
  Widget condition({required int checkTemperature}) {
    // other logic
    // Declare a widget variable,
    // it will be assigned later according
    // to the condition
    Widget widget;

    if (30 >= checkTemperature && checkTemperature <= 20) {
      return widget = Rainy();
    } else if (40 >= checkTemperature && checkTemperature <= 31) {
      return widget = Sunny();
    } else if (50 >= checkTemperature && checkTemperature <= 41) {
      return widget = OverCast();
    }

    widget = Container();
    return widget;
  }
}
