import 'package:flutter/material.dart';

bool light = true;
ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: Colors.black),
    headline1: TextStyle(color: Colors.black),
  ),
);

// if you want to add your own dark mode and light themes use these
ThemeData _darkTheme = ThemeData(
  accentColor: Colors.blue.shade900,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: Colors.white),
  ),
  appBarTheme: AppBarTheme(color: Colors.indigo.shade900),
);
