import 'package:flutter/material.dart';
import '/core/utils/resources/resources_exporter.dart';
import 'widgets_theme/light/app_bar_theme.dart';
import 'widgets_theme/light/bottom_navigation_bar_theme.dart';
import 'widgets_theme/light/button_theme.dart';
import 'widgets_theme/light/card_theme.dart';
import 'widgets_theme/light/color_scheme.dart';
import 'widgets_theme/light/input_decoration_theme.dart';
import 'widgets_theme/light/outlined_button_theme.dart';
import 'widgets_theme/light/radio_theme.dart';
import 'widgets_theme/light/text_selection_theme.dart';
import 'widgets_theme/light/text_theme.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorManager.primaryColor,
    buttonTheme: ButtonThemeLight.buttonThemeData,
    scaffoldBackgroundColor: ColorManager.scaffoldColorL,
    bottomNavigationBarTheme:
        BottomNavigationBarThemeDataLight.bottomNavigationBarThemeData,
    colorScheme: ColorSchemeLight.colorScheme,
    outlinedButtonTheme: OutlinedButtonThemeL.outlinedButtonThemeData,
    textSelectionTheme: TextSelectionThemeLight.textSelectionThemeData,
    appBarTheme: AppBarThemeLight.appBarTheme,
    cardTheme: CardThemeLight.cardTheme,
    textTheme: TextThemeLight.textTheme,
    radioTheme: RadioThemeLight.light,
    inputDecorationTheme: InputDecorationThemeLight.inputDecorationTheme,
    dividerTheme:
        const DividerThemeData(space: 0.5, thickness: 0.5, color: Colors.grey),
  );
}
