import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  TextStyle get titleStyle => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.green
  );

}