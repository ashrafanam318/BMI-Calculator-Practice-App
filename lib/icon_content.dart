import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String text;
  final Color textColor;
  final IconData iconData;

  IconContent({@required this.text, this.textColor, @required this.iconData});

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
