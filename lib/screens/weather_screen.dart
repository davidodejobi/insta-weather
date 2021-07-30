import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_daily/utilities/constants.dart';
import 'package:weather_daily/utilities/info_scrollable.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: size.height * 0.65,
            decoration: kRainDecoration,
            child: Stack(
              children: [
                Positioned(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 5,
                      ),
                      Rain(
                        width: 3.0,
                        height: 200,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Rain(
                        width: 3.0,
                        height: 130,
                        color: Colors.white,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Rain(
                        width: 3.0,
                        height: 180,
                        color: Colors.white,
                      ),
                      Spacer(
                        flex: 4,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 70,
                  // height: 200,
                  child: Rain(
                    width: 3.0,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 90,
                  // left: 20,
                  width: size.width,
                  // height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.values[2],
                    children: [
                      Spacer(
                        flex: 8,
                      ),
                      Rain(
                        width: 3.0,
                        height: 90,
                        color: Color(0xFF737175),
                      ),
                      Spacer(
                        flex: 9,
                      ),
                      Rain(
                        width: 3.0,
                        height: 280,
                        color: Color(0xFF737175),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 160,
                  right: 90,
                  // height: 200,
                  child: Rain(
                    width: 3.0,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 160,
                  right: 170,
                  // height: 200,
                  child: Rain(
                    width: 3.0,
                    height: 130,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  right: 140,
                  // height: 200,
                  child: Rain(
                    width: 3.0,
                    height: 180,
                    color: Color(0xFF737175),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 30,
                  child: Text('Agbarigidoma',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        color: Colors.grey,
                      )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Icon(Icons.grain_rounded)),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text(
                          'rain',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      Container(
                        child: Text(
                          '20°C',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          InfoScrollable(size: size)
        ],
      ),
    );
  }
}

class Rain extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  Rain({required this.height, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
