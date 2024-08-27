import 'package:flutter/material.dart';
import '/core/utils/resources/resources_exporter.dart';

class TextFormFieldTheme {
  static const borderDecoration = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorManager.borderColor,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(
        8.00,
      ),
    ),
  );
  static const errorBorderDecoration = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorManager.errorColor,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(
        8.00,
      ),
    ),
  );
  static const focusedBorderDecoration = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorManager.primaryColor,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(
        8.00,
      ),
    ),
  );
  static final formDecoration = InputDecoration(
    filled: true,
    fillColor: ColorManager.whiteColor,
    hintStyle: TextStyleManager.formHint,
    labelStyle: TextStyleManager.formLabel,
    errorStyle: TextStyleManager.screenBodyVerySmall.copyWith(
      color: ColorManager.redColor,
    ),
    isDense: true,
    focusedBorder: focusedBorderDecoration,
    enabledBorder: borderDecoration,
    disabledBorder: borderDecoration,
    errorBorder: errorBorderDecoration,
    border: borderDecoration,
    focusedErrorBorder: borderDecoration,
    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
  );
}
