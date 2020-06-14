import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;
  final int flex;

  ReusableCard({@required this.color, this.cardChild, this.onPress, this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex != null ? this.flex : 1,
      child: GestureDetector(
        onTap: this.onPress,
        child: Container(
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: this.cardChild,
        ),
      ),
    );
  }
}
