import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/icon_content.dart';

import 'constants.dart';

import 'results_page.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 18;
  GenderType selectedGender;

  void updateColor(GenderType gender) {
    this.setState(() {
      selectedGender = gender;
    });
  }

  void onHeightChange(double newValue) {
    this.setState(() {
      height = newValue.round();
    });
  }

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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          ReusableCard(
                            color: this.selectedGender == GenderType.male
                                ? kACTIVE_CARD_COLOR
                                : kINACTIVE_CARD_COLOR,
                            cardChild: IconContent(
                              text: "MALE",
                              textColor: kCARD_TEXT_COLOR,
                              iconData: FontAwesomeIcons.mars,
                            ),
                            onPress: () => this.updateColor(GenderType.male),
                          ),
                          SizedBox(width: 24.0),
                          ReusableCard(
                            color: this.selectedGender == GenderType.female
                                ? kACTIVE_CARD_COLOR
                                : kINACTIVE_CARD_COLOR,
                            cardChild: IconContent(
                              text: "FEMALE",
                              textColor: kCARD_TEXT_COLOR,
                              iconData: FontAwesomeIcons.venus,
                            ),
                            onPress: () => this.updateColor(GenderType.female),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ReusableCard(
                      color: kACTIVE_CARD_COLOR,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 11.0),
                          Text(
                            "HEIGHT",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: kCARD_TEXT_COLOR,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                this.height.toString(),
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 38.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 13.0,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 26.0,
                                ),
                                overlayColor: Color(0x1feb1555),
                                thumbColor: Color(0xffeb1555),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xff8d8e98),
                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: this.onHeightChange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          ReusableCard(
                            color: kACTIVE_CARD_COLOR,
                            cardChild: Column(
                              children: <Widget>[
                                SizedBox(height: 11.0),
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: kCARD_TEXT_COLOR,
                                  ),
                                ),
                                SizedBox(height: 11.0),
                                Text(
                                  this.weight.toString(),
                                  style: TextStyle(
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () => this.setState(() {
                                        this.weight--;
                                      }),
                                    ),
                                    SizedBox(width: 10),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () => this.setState(() {
                                        this.weight++;
                                      }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 24.0),
                          ReusableCard(
                            color: kACTIVE_CARD_COLOR,
                            cardChild: Column(
                              children: <Widget>[
                                SizedBox(height: 11.0),
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: kCARD_TEXT_COLOR,
                                  ),
                                ),
                                SizedBox(height: 11.0),
                                Text(
                                  this.age.toString(),
                                  style: TextStyle(
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () => this.setState(() {
                                        this.age--;
                                      }),
                                    ),
                                    SizedBox(width: 10),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () => this.setState(() {
                                        this.age++;
                                      }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultsPage()),
                );
              },
              child: Container(
                color: kBOTTOM_CONTAINER_COLOR,
                height: kBOTTOM_CONTAINER_HEIGHT,
                width: double.infinity,
                child: Center(
                  child: Text("CALCULATE"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
