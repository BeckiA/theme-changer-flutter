import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
);
