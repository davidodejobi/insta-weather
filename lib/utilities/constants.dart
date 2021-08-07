import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_daily/services/api_key.dart';

const kScaffoldBackgroundColor = Color(0xFF383840);

const kRainDecoration = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [
    0.1,
    0.7,
  ],
  colors: [
    Color(0xFF737175),
    Color(0xFF383840),
  ],
));

const kSunDecoration = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  stops: [
    0.1,
    0.7,
  ],
  colors: [
    Color(0xFF737175),
    Color(0xFF383840),
  ],
));
