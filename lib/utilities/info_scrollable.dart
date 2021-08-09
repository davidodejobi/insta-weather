import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_scrolling_card.dart';
import 'constants.dart';

class InfoScrollable extends StatelessWidget {
  final double minTemp;
  final double maxTemp;
  final int feelsLike;
  final int humidity;
  final int windSpeed;

  InfoScrollable({
    required this.windSpeed,
    required this.humidity,
    required this.maxTemp,
    required this.minTemp,
    required this.feelsLike,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      // height: size.height * 0.20,
      color: kScaffoldBackgroundColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BottomScrollingCard(
              heading: 'TEMP',
              icon: FontAwesomeIcons.minus,
              info: '$minTemp°C - $maxTemp°C',
            ),
            BottomScrollingCard(
              heading: 'FEELS LIKE',
              icon: FontAwesomeIcons.grinBeamSweat,
              info: '$feelsLike°C',
            ),
            BottomScrollingCard(
              heading: 'HUMIDITY',
              icon: FontAwesomeIcons.minus,
              info: '$humidity %',
            ),
            BottomScrollingCard(
              heading: 'WIND SPEED',
              icon: FontAwesomeIcons.minus,
              info: '$windSpeed',
            ),
          ],
        ),
      ),
    );
  }
}
