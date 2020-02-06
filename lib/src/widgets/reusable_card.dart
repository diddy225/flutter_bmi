import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color boxColor;
  final Widget cardChild;
  final Function onTap;

  ReusableCard({@required this.boxColor, this.cardChild, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
