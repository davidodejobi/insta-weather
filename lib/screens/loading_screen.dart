import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:weather_daily/screens/weather_screen.dart';
import 'package:weather_daily/services/api_key.dart';
import 'package:weather_daily/services/location.dart';
import 'package:weather_daily/services/networking.dart';
import 'package:weather_daily/services/weather.dart';
import 'bottom_nav.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Pointing the video controller to our local asset.
    _controller = VideoPlayerController.asset("assets/images/loading_video.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  void getData() async {
    WeatherModel weatherModel = WeatherModel();

    var weatherData = await weatherModel.getWeatherData();

    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return BottomNavControl(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  getData();
                },
                child: Text('Next Page')),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
