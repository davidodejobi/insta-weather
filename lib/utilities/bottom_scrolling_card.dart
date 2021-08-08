import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomScrollingCard extends StatelessWidget {
  final String heading;
  final IconData icon;
  final String info;

  BottomScrollingCard({
    required this.icon,
    required this.heading,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 100,
      width: 170,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [
              0.0001,
              0.99,
            ],
            colors: [
              Color(0xFF706F75),
              Color(0xFF3A393E),
            ],
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FaIcon(
                  icon,
                  size: 15,
                )
              ],
            ),
            Text(
              info,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
