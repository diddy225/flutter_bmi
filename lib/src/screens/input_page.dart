import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/icon_content.dart';
import '../widgets/reusable_card.dart';
import '../widgets/bottom_container.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    boxColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  boxColor: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              boxColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    boxColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          BottomContainer(),
        ],
      ),
    );
  }
}

//xFF1D1E33
