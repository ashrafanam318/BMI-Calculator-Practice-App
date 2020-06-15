import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed != null ? this.onPressed : () {},
      child: Icon(
        this.icon,
        size: 18,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 40, width: 40),
    );
  }
}
