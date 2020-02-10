import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight * 703 / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.6) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  Color getColor() {
    if (_bmi >= 30) {
      return Colors.red;
    } else if (_bmi > 25) {
      return Colors.yellow;
    } else if (_bmi > 18.6) {
      return Color(0xFF24D876);
    } else {
      return Colors.pink;
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.6) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
