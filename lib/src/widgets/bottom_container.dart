import 'package:flutter/material.dart';

const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0),
      height: bottomContainerHeight,
      color: bottomContainerColor,
      child: Center(
        child: Text(
          'CALCULATE YOUR BMI',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
