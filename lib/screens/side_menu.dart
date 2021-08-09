import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_daily/utilities/constants.dart';

class WeatherTipScreen extends StatefulWidget {
  @override
  _WeatherTipScreenState createState() => _WeatherTipScreenState();
}

class _WeatherTipScreenState extends State<WeatherTipScreen> {
  var tipList = [
    "If power lines are down, do not step in puddles or standing water.",
    "Keep children and pets away from hazardous sites and floodwater.",
    "Stay away from floodwaters. Beware of snakes, insects and other animals that may be in or around floodwaters and your home.",
    "If your neighborhood is prone to flooding, be prepared to evacuate quickly if necessary.",
    "If you are caught on a flooded road and waters are rising rapidly around you, get out of the car quickly and move to higher ground. Most cars can be swept away by less than two feet of moving water.",
    "Tornadoes, lightning strikes, blizzards, icy roads, and other problems occur when there is severe weather present, and that’s what makes it dangerous. When your meteorologist tells you that there is a situation that’s favorable for this weather, your job is to seek shelter. Get off the road, and stay safe. Anything can happen...",
    "A little rain never hurt anyone, but a lot of rain can cause death and destruction in no time. Excessive rainfall can cause water levels to rise. The ground becomes saturated, which means it’s not absorbing the water that continues to fall. This allows rainwater to pile up, and it can cause flash floods, rivers and lakes to rise, and storm surge is another situation that occurs when excessive rain and winds combine.",
    "Hurricanes are the most notable high-wind weather situation. This is what many people fear the most. When the winds in a storm reach 75 miles per hour, it seems terrifying. High winds have the potential to rip roofs off of houses, push cars off the road, down power lines, power poles, street signs, and cause loose debris to fly through the air and cause catastrophic damage. High winds can down trees in no time at all.",
    "The key to tornado survival is a safety plan.  Your plan at home should be known by everyone in the home and practiced at least twice each year.  Children who may be at home alone should know what to do and where to go even if no adults are there.",
    "It is not the wind inside and around a tornado that kills and injures people - it's the flying debris that's in the wind. Items can fly through the air (broken glass, etc) or fall down (could range from small objects to objects the size and weight of cars",
    'The key to tornado survival is a safety plan.  Your plan at home should be known by everyone in the home and practiced at least twice each year.  Children who may be at home alone should know what to do and where to go even if no adults are there.'
        'When a thunderstorm threatens, protect yourself by taking cover within your home, a large building, or a hard-topped automobile. Do not use the phone except in the case of an emergency.',
    'In the case of a flash flood event, stay out and away from deep water.',
    'Just like you need to take breaks from your work throughout the day, your body needs to take breaks from the cold. Plan warm-up times throughout your day to avoid numbness and shivers.',
    'Working outdoors can be challenging, and increases risks to your safety. Make sure you’re getting enough sleep to stay alert on the job when conditions are more dangerous. '
  ];

  getRandomElement<tip_list>(List<tip_list> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kScaffoldBackgroundColor,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                  text: 'Weather ',
                  style: TextStyle(fontSize: 30),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Tips',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  color: kScaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF3A393E),
                      spreadRadius: 1.0,
                      blurRadius: 5,
                      offset: Offset(4.0, 4.0),
                    ),
                    BoxShadow(
                      color: Colors.grey.shade700,
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(-3.0, -3.0),
                    ),
                  ],
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    getRandomElement(tipList),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  ),
                )),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    getRandomElement(tipList);
                  });
                },
                child: Text('More Tips'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
