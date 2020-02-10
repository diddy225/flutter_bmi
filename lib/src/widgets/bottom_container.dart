import 'package:flutter/material.dart';
import '../constants/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String title;

  BottomButton({@required this.onPress, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            title,
            style: kBottomButton,
          ),
        ),
      ),
    );
  }
}
