import 'package:flutter/material.dart';
import 'better_buttons.dart';
import 'clicky_button.dart';

class Result extends StatefulWidget {
  final String value;
  Result({
    Key key,
    this.value,
  }) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    // trying to add theme in the result page

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Results",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      // backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // using BmiCard to make result page

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            BetterCard(
              text: Center(
                child: Text(
                  "BMI :",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            BetterCard(
                text: Center(
              child: Text(
                "${widget.value}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ))
          ]),

          //Padding(padding: EdgeInsets.only(top: 15)),
          Row(children: <Widget>[
            BetterCard(
              text: Text("1)BMI>=30:",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            BetterCard(
              text: Text(
                "Higher than normal\n body weight.\n Try to exercise more!",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ]),

          //  Padding(padding: const EdgeInsets.all(10)),

          Row(children: [
            BetterCard(
              text: Text("2)BMI<25:",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            BetterCard(
              text: Text(
                "You have a normal  body weight. Good job and try to maintain it!",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ]),

          //Padding(padding: const EdgeInsets.all(10)),
//fix this row// giving ERROR!!
          Row(
            children: [
              BetterCard(
                text: Text("3)BMI>25 And BMI<=29:",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              BetterCard(
                text: Text(
                  "You can do much better",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Transform.scale(
              scale: 0.8,
              child: ClickyButton(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  //  shape: RoundedRectangleBorder(
                  //    borderRadius: BorderRadius.all(Radius.circular(10))),
                  //color: Colors.purple,
                  ///padding: const EdgeInsets.all(10),
                  // color: widget.colors[_counter % widget.colors.length],
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
