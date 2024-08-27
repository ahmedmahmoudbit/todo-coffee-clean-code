import 'package:flutter/material.dart';

import '/core/utils/resources/resources_exporter.dart';

class ButtonThemeLight {
  static ButtonThemeData buttonThemeData = const ButtonThemeData(
    colorScheme: ColorScheme.light(
      primary: ColorManager.primaryColor, // button color
    ),
  );
}
