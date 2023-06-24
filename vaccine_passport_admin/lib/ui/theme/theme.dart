import 'package:flutter/material.dart';

import '../constants/constants.dart';

final ThemeData theme = ThemeData(
  primarySwatch: Colors.pink,
  primaryColor: kPrimaryColor,
  accentColor: kAccentColor,
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  brightness: Brightness.dark,
  fontFamily: 'Acme',
  appBarTheme: AppBarTheme(elevation: 0, centerTitle: true),
  errorColor: Colors.deepOrange,
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(fontSize: 14.5),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Colors.deepOrange),
    ),
  ),
);
