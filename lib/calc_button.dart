import 'package:flutter/material.dart';
import 'dart:math';
import 'result_page.dart';

double ht = 0.0, wt = 0.0;
double bmi = 0.0;
final TextEditingController t1 = new TextEditingController(text: "0");
final TextEditingController t2 = new TextEditingController(text: "0");
String calculateBMI() {
  ht = double.parse(t2.text);
  wt = double.parse(t1.text);
  bmi = wt / pow(ht, 2);
  return bmi.toStringAsFixed(1);
}

class WorkingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(
          "Calculate",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        color: Colors.blue.shade900,
        elevation: 10,
        padding: const EdgeInsets.all(15),
        onPressed: () {
          // fix navigator to the result page
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    Result(value: calculateBMI())),
          );
        });
  }
}
