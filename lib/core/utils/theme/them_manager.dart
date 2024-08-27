import 'package:flutter/material.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

class ThemManager {
  static ThemeData get lightTheme => LightTheme.lightTheme;

  static ThemeData get darkTheme => DarkTheme.darkTheme;
}
