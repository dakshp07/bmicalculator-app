import 'package:flutter/material.dart';

class BMIcard extends StatelessWidget {
  BMIcard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onPress,
          child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
