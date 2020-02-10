import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/reusable_card.dart';
import '../widgets/bottom_container.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Color bmiTextcolor;

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
    @required this.bmiTextcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              boxColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyleUpper(color: bmiTextcolor),
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
