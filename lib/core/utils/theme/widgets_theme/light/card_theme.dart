import 'package:flutter/material.dart';

class CardThemeLight {
  static CardTheme cardTheme = CardTheme(
    color: Colors.white,
    elevation: 2.0,
    margin: const EdgeInsets.only(
      top: 10,
      left: 10,
      right: 10,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
