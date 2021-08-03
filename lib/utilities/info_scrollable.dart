import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_scrolling_card.dart';

class InfoScrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: size.height * 0.20,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BottomScrollingCard(
              heading: 'TEMP',
              icon: FontAwesomeIcons.minus,
              info: '20 - 26°C',
            ),
            BottomScrollingCard(
              heading: 'TEMP',
              icon: FontAwesomeIcons.minus,
              info: '20 - 26°C',
            ),
            BottomScrollingCard(
              heading: 'TEMP',
              icon: FontAwesomeIcons.minus,
              info: '20 - 26°C',
            ),
            BottomScrollingCard(
              heading: 'TEMP',
              icon: FontAwesomeIcons.minus,
              info: '20 - 26°C',
            ),
          ],
        ),
      ),
    );
  }
}
