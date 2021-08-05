import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_daily/screens/side_menu.dart';
import 'package:weather_daily/screens/weather_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customisation.dart';

class BottomNavControl extends StatefulWidget {
  const BottomNavControl({Key? key}) : super(key: key);

  @override
  _BottomNavControlState createState() => _BottomNavControlState();
}

class _BottomNavControlState extends State<BottomNavControl> {
  int _selectedIndex = 1;
  static List<Widget> _widgetOptions = <Widget>[
    SideMenu(),
    WeatherScreen(),
    Customization(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF383840),
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: '',
                icon: FaIcon(
                  FontAwesomeIcons.water,
                  size: 23,
                ),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                label: '',
                icon: FaIcon(
                  FontAwesomeIcons.temperatureLow,
                  size: 25,
                ),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              label: '',
              icon: FaIcon(
                FontAwesomeIcons.cog,
                size: 25,
              ),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 10),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

/*
 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.values[2],
                  children: [
                    Spacer(
                      flex: 14,
                    ),
                    Rain(
                      width: 3.0,
                      height: 120,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Rain(
                      width: 3.0,
                      height: 150,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Rain(
                      width: 3.0,
                      height: 100,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
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
                    Spacer(flex: 1),
                  ],
                ),
 */
