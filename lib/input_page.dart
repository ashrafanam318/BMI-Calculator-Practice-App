import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/icon_content.dart';

const BOTTOM_CONTAINER_HEIGHT = 80.0;
const ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const BOTTOM_CONTAINER_COLOR = Color(0xffeb1555);
const CARD_TEXT_COLOR = Color(0xff8d8e98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: ACTIVE_CARD_COLOR,
                        cardChild: IconContent(
                          text: "MALE",
                          textColor: CARD_TEXT_COLOR,
                          iconData: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Container(width: 24.0),
                    Expanded(
                      child: ReusableCard(
                        color: ACTIVE_CARD_COLOR,
                        cardChild: IconContent(
                          text: "FEMALE",
                          textColor: CARD_TEXT_COLOR,
                          iconData: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 24.0),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ReusableCard(
                  color: ACTIVE_CARD_COLOR,
                ),
              ),
            ),
            Container(height: 24.0),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: ACTIVE_CARD_COLOR,
                      ),
                    ),
                    Container(width: 24.0),
                    Expanded(
                      child: ReusableCard(
                        color: ACTIVE_CARD_COLOR,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 16.0),
            Container(
              color: BOTTOM_CONTAINER_COLOR,
              height: BOTTOM_CONTAINER_HEIGHT,
              width: double.infinity,
              child: Center(
                child: Text("CALCULATE BMI"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
