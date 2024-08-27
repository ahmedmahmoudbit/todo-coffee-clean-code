import 'package:flutter/material.dart';

import '/core/utils/resources/resources_exporter.dart';

class OutlinedButtonThemeL {
  static OutlinedButtonThemeData outlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      side: WidgetStateProperty.all(
        const BorderSide(
          width: 1,
          color: ColorManager.primaryColor,
        ),
      ),
    ),
  );
}
