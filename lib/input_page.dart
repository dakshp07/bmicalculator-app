import 'package:flutter/material.dart';
import 'theme_changer.dart';
import 'calc_button.dart';

class NewTheme extends StatefulWidget {
  const NewTheme({
    Key key,
  }) : super(key: key);

  @override
  _NewThemeState createState() => _NewThemeState();
}

class _NewThemeState extends State<NewTheme> {
  void clear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),

      //theme: _light ? _lightTheme : _darkTheme,
      theme: light ? ThemeData.light() : ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          // backgroundColor: Colors.purple,
        ),
        body: Container(
          //padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.brightness_2,
                          color: light ? null : Colors.orange,
                        ),
                        Switch(
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.white60,
                            value: light,
                            onChanged: (state) {
                              setState(() {
                                light = state;
                              });

                              //Use it to manage the different states
                            }),
                        Icon(
                          Icons.brightness_7,
                          color: light ? Colors.blue.shade700 : null,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: TextField(
                  // style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    labelText: "Enter Weight (in kg)",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2,
                      // color: Colors.black
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: t1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    labelText: "Enter Height (in m)",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2,
                      //  color: Colors.black,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: t2,
                ),
              ),
              //new Padding(padding: EdgeInsets.only(top: 10)),
              /*SizedBox(
              height: 50,
            ),*/
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 99),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: WorkingButton(),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: RaisedButton(
                            child: Text(
                              "Clear",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            color: Colors.redAccent.shade400,
                            onPressed: clear,
                            elevation: 10,
                            focusElevation: 10,
                            padding: const EdgeInsets.all(15),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
