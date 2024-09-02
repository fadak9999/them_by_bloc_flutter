
import 'package:flutter/material.dart';

enum AppTheme {
  blueLight("Blue Light"),
  blueDark("Blue Dark"),
  yellowDark("yellow Dark"),
  violetLight("violet Light"),
  redDark("Red Dark");

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.blueLight: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.blueDark: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 3, 58, 103)),
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 3, 58, 103),
  ),
  AppTheme.redDark: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 255, 0, 0)),
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 255, 0, 0),
  ),
  //ff
  AppTheme.yellowDark: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 243, 233, 33)),
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 243, 215, 33),
  ),
   AppTheme.violetLight: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 72, 1, 96)),
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 74, 0, 101),
  ),
};
