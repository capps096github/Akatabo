import 'package:flutter/material.dart';

import 'dart:math' as math;

// akatabo Color
const akataboColor = Color(0xFF7F00FF);

// akatabo secondary color
const akataboSecondaryColor = Color(0xFF200E32);

// ratings color
const akataboRatingsColor = Color(0xFFFFC107);

// radio button color
const akataboRadioButtonColor = Color(0xFFF03800);

// akatabo background
const akataboBackground = Color(0xFFF8F1FF);

// red
const akataboRed = Color(0xFFE60000);

// green
const akataboGreen = Color(0xFF199400);

// green
const akataboVerifiedGreen = Color(0xFF25B800);

// blue
const akataboBlue = Color(0xFF2962FF);

// pink
const akataboPink = Color(0xFFF80029);

// akatabo white
const akataboWhite = Color(0xFFFFFFFF);

// akatabo black
const akataboBlack = Color(0xFF000000);

// akatabo transparent
const akataboTransparent = Colors.transparent;

// akatabo random color
Color get akataboRandomColor => getRandomColor();

/// Generates a random color that can be used as a background color and support white as a text color.
/// The alpha channel of the generated color is modified based on its luminance value.
/// If the luminance is greater than 0.5, the alpha channel is set to 230 (0.9 * 255).
/// Otherwise, the alpha channel is set to 255 (1.0 * 255).
Color getRandomColor() {
  // Generate a random color using the standard RGB color space
  final randomColor = Color((math.Random().nextDouble() * akataboColor.value).toInt());

  // Calculate the luminance value of the color using the formula recommended by the W3C
  final luminance = (0.2126 * randomColor.red +
          0.7152 * randomColor.green +
          0.0722 * randomColor.blue) /
      255;

  // Set the alpha channel based on the luminance value
  final alpha = luminance > 0.5 ? 230 : 255;

  // Return the random color with the modified alpha channel
  return randomColor.withAlpha(alpha);
}
