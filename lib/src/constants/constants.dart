import 'package:flutter/material.dart';

// const, values
const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);

const Color kPrimaryPink = Color(0xFFEB1555);

const Color kBottomContainerColor = Color(0xFFEB1555);
const double kBottomContainerHeight = 80.0;

// Widgets
const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  fontFamily: 'Roboto',
);

const TextStyle kBottomButton = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Roboto',
);

// Results
const TextStyle kResultTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w900,
);

const TextStyle kResultNumberTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
  fontFamily: 'Roboto',
);

TextStyle kResultTextStyleUpper({Color color}) {
  return TextStyle(
    fontSize: 20.0,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    color: color,
  );
}

const TextStyle kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
