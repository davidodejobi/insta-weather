import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_daily/screens/side_menu.dart';
import 'package:weather_daily/screens/weather_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_daily/services/weather.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:weather_daily/utilities/constants.dart';

import 'customisation.dart';

class BottomNavControl extends StatefulWidget {
  final locationWeather;

  BottomNavControl({this.locationWeather});

  @override
  _BottomNavControlState createState() => _BottomNavControlState();
}

class _BottomNavControlState extends State<BottomNavControl> {
  WeatherModel weatherModel = WeatherModel();

  late int temp;
  late String message;
  late String weatherIcon;
  late String cityName;
  late int tempFeel;
  late int windySpeed;
  late int tempMin;
  late int tempMax;
  late String weatherType;
  late int humidity;
  late int condition;
  late String icon;
  late Widget weatherWidget;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    var temperature = weatherData['main']['temp'];
    temp = temperature.toInt();
    condition = weatherData['weather'][0]['id'];
    icon = weatherModel.getWeatherIcon(condition);

    cityName = weatherData['name'];
    var temperatureFeels = weatherData['main']['feels_like'];
    tempFeel = temperatureFeels.toInt();
    var windSpeed = weatherData['wind']['speed'];
    windySpeed = windSpeed.toInt();
    humidity = weatherData['main']['humidity'];
    var temperatureMin = weatherData['main']['temp_min'];
    tempMin = temperatureMin.toInt();
    var temperatureMax = weatherData['main']['temp_max'];
    tempMax = temperatureMax.toInt();
    weatherType = weatherData['weather'][0]['main'];

    print(cityName);
    print(condition);
    print(cityName);
  }

  List<Widget> _buildScreens() {
    return [
      SideMenu(),
      WeatherScreen(
        widgetCondition: condition,
        icon: icon,
        weatherType: weatherType,
        temp: temp,
        text: cityName,
      ),
      Customization()
    ];
  }

  PersistentTabController _controller = PersistentTabController(
    initialIndex: 1,
  );

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: FaIcon(
          FontAwesomeIcons.water,
          size: 23,
        ),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(
          FontAwesomeIcons.temperatureLow,
          size: 25,
        ),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(
          FontAwesomeIcons.cog,
          size: 25,
        ),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: kScaffoldBackgroundColor,
        // Default is Colors.white.
        handleAndroidBackButtonPress: true,
        // Default is true.
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true,
        // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style1, // Choose the nav bar style with this property.
      ),
    );
  }
}

// Had to look for another widget because the flutter bottom navigator the data it is retrieving from the API to the widget in it.

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Color(0xFF383840),
//           showUnselectedLabels: true,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//                 label: '',
//                 icon: FaIcon(
//                   FontAwesomeIcons.water,
//                   size: 23,
//                 ),
//                 backgroundColor: Colors.green),
//             BottomNavigationBarItem(
//                 label: '',
//                 icon: FaIcon(
//                   FontAwesomeIcons.temperatureLow,
//                   size: 25,
//                 ),
//                 backgroundColor: Colors.yellow),
//             BottomNavigationBarItem(
//               label: '',
//               icon: FaIcon(
//                 FontAwesomeIcons.cog,
//                 size: 25,
//               ),
//               backgroundColor: Colors.blue,
//             ),
//           ],
//           type: BottomNavigationBarType.fixed,
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.white,
//           iconSize: 40,
//           onTap: _onItemTapped,
//           elevation: 10),
//       body: _widgetOptions.elementAt(_selectedIndex),
//     );
//   }
// }
