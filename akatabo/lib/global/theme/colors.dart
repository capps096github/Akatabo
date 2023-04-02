import 'package:flutter/material.dart';

import 'dart:math' as math;

// TODO pass incolor codes here as variables
// akatabo Color
const akataboColor = Color(0xFF7F00FF);

// akatabo secondary color
const akataboSecondaryColor = Color(0xFF200E32);

// akatabo background
const akataboBackground = Color(0xFFE5E5E5);

// akatabo white
const akataboWhite = Color(0xFFFFFFFF);

// akatabo black
const akataboBlack = Color(0xFF000000);

// akatabo transparent
const akataboTransparent = Colors.transparent;

// akatabo random color
Color get akataboRandomColor =>
    Color((math.Random().nextDouble() * 0xFFE3EEFE).toInt()).withOpacity(1.0);
