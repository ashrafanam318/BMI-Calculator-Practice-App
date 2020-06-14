import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                        cardChild: ReusableContent(
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
                        cardChild: ReusableContent(
                          text: "FEMALE",
                          textColor: CARD_TEXT_COLOR,
                          iconData: FontAwesomeIcons.mars,
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

class ReusableContent extends StatelessWidget {
  final String text;
  final Color textColor;
  final IconData iconData;

  ReusableContent(
      {@required this.text, this.textColor, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(this.iconData, size: 80.0),
        SizedBox(height: 15.0),
        Text(
          this.text,
          style: TextStyle(
            fontSize: 18.0,
            color: this.textColor,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: this.cardChild,
    );
  }
}

//Widget build(BuildContext context) {
//  return Scaffold(
//    appBar: AppBar(
//      title: Text('BMI CALCULATOR'),
//    ),
//    body: SafeArea(
//      child: Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: Column(
//          children: <Widget>[
//            Expanded(
//              flex: 1,
//              child: Row(
//                children: <Widget>[
//                  Expanded(
//                    flex: 1,
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color: ACTIVE_CARD_COLOR,
//                        borderRadius: BorderRadius.circular(12.0),
//                      ),
//                    ),
//                  ),
//                  Container(width: 24.0),
//                  Expanded(
//                    flex: 1,
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color: ACTIVE_CARD_COLOR,
//                        borderRadius: BorderRadius.circular(12.0),
//                      ),
//                    ),
//                  )
//                ],
//              ),
//            ),
//            Container(height: 24.0),
//            Expanded(
//              flex: 1,
//              child: Container(
//                decoration: BoxDecoration(
//                  color: ACTIVE_CARD_COLOR,
//                  borderRadius: BorderRadius.circular(12.0),
//                ),
//              ),
//            ),
//            Container(height: 24.0),
//            Expanded(
//              flex: 1,
//              child: Row(
//                children: <Widget>[
//                  Expanded(
//                    flex: 1,
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color: ACTIVE_CARD_COLOR,
//                        borderRadius: BorderRadius.circular(12.0),
//                      ),
//                    ),
//                  ),
//                  Container(width: 24.0),
//                  Expanded(
//                    flex: 1,
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color: ACTIVE_CARD_COLOR,
//                        borderRadius: BorderRadius.circular(12.0),
//                      ),
//                    ),
//                  )
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    ),
//  );
//}
