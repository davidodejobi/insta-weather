import 'package:flutter/material.dart';

class Sunny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.65,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.9,
                    center: Alignment(0.5, -0.6),
                    focal: Alignment(0.1, -0.1),
                    stops: [
                      0.1,
                      0.2,
                      0.3,
                      0.4,
                      0.99,
                    ],
                    colors: [
                      Colors.orange.shade500,
                      Colors.orange.shade400,
                      Colors.orange.shade300,
                      Colors.orange.shade200,

                      // Color(0xFFF4A831).withOpacity(0.4),
                      // // Color(0xFFFBE2BA).withOpacity(0.001),
                      Color(0xFF383840),
                    ],
                  ),
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
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      child: Text(
                        '20°C',
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
