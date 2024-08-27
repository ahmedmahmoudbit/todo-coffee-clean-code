import 'package:flutter/material.dart';

import '/core/utils/resources/resources_exporter.dart';
import 'form_field_light.dart';

class InputDecorationThemeLight {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    border: TextFormFieldTheme.borderDecoration,
    errorBorder: TextFormFieldTheme.errorBorderDecoration,
    focusedBorder: TextFormFieldTheme.focusedBorderDecoration,
    filled: true,
    fillColor: ColorManager.whiteColor,
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: ColorManager.greyText2,
    ),
    labelStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: ColorManager.textFormFieldColor,
    ),
    errorStyle: TextStyleManager.screenBodyVerySmall.copyWith(
      color: ColorManager.redColor,
    ),
    isDense: true,
    enabledBorder: TextFormFieldTheme.borderDecoration,
    disabledBorder: TextFormFieldTheme.borderDecoration,
    focusedErrorBorder: TextFormFieldTheme.borderDecoration,
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
  );
}
