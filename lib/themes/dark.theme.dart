import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      body1: new TextStyle(color: Colors.red),
      display4: new TextStyle(
        fontSize: 78,
      ),
      button: new TextStyle(
        color: Colors.green,
      ),
    ),
    primaryColor: primaryColor,
    accentColor: Colors.black26, // cor que constrasta com a primaryColor
  );
}
