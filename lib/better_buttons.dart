import 'package:flutter/material.dart';
import 'reusable_card.dart';

class BetterCard extends StatelessWidget {
  BetterCard({@required this.text});
  final Widget text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BMIcard(
        colour: Colors.blue.shade900,
        cardChild: Padding(
          padding: const EdgeInsets.all(21.0),
          child: text,
        ),
      ),
    );
  }
}
