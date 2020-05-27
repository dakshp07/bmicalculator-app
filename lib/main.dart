import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double ht=0.0,wt=0.0;
  double bmi=0.0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  String calculateBMI(){
    ht=double.parse(t2.text);
    wt=double.parse(t1.text);
    bmi=wt/pow(ht, 2);
    return bmi.toStringAsFixed(1);
  }
  void Clear(){
    setState(() {
      t1.text="";
      t2.text="";
    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(
                  labelText: "Enter Weight (in kg)",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple)
              ),
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            new TextField(
              decoration: InputDecoration(
                  labelText: "Enter Height (in m)",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple)
              ),
              keyboardType: TextInputType.number,
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 10)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: Text("Calculate",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.purple,
                  padding: const EdgeInsets.all(10),
                  onPressed:() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Result(value: calculateBMI())));
                  }
                ),

                new RaisedButton(
                  child: Text("Clear",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.white30,
                  onPressed: Clear,
                  padding: const EdgeInsets.all(10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Result extends StatefulWidget {
  final String value;
  Result({Key key, this.value,}) : super (key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Results", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("BMI:",style: TextStyle(fontSize: 30,color: Colors.purple),),
            new Text("${widget.value}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold,color: Colors.purple),),
            new Padding(padding: EdgeInsets.only(top: 15)),
            new Text(
              "1)BMI>=30:",style: TextStyle(fontSize: 20,color: Colors.purple)
            ),
            new Text(
              "You have a higher than normal body weight. Try to exercise more!",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
            ),
            new Padding(padding: const EdgeInsets.all(10)),
            new Text(
                "2)BMI<25:",style: TextStyle(fontSize: 20,color: Colors.purple)
            ),
            new Text(
                "You have a normal  body weight. Good job and try to maintain it!",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
            ),
            new Padding(padding: const EdgeInsets.all(10)),
            new Text(
                "3)BMI>25 And BMI<=29:",style: TextStyle(fontSize: 20,color: Colors.purple)
            ),
            new Text(
                "You can do much better",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
            ),
            new Padding(padding: const EdgeInsets.all(10)),
            new RaisedButton(
                child: Text("Re-Calculate",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Colors.purple,
                padding: const EdgeInsets.all(10),
                onPressed: () {
                  Navigator.pop(context);
                }
            )
          ],
        )

      ),
    );
  }
}


