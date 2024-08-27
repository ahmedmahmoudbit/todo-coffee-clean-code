import 'package:flutter/material.dart';

import '/core/utils/resources/resources_exporter.dart';

class ColorSchemeLight {
  static ColorScheme colorScheme = const ColorScheme.light(
    // txt color
    inversePrimary: ColorManager.whiteColor,
    // black color
    onPrimary: ColorManager.blackText1,
    // gray txt 1
    onInverseSurface: ColorManager.greyText1,
    // gray txt 3
    // surfaceDim: ColorManager.greyText3,
    // select container shadow
    onSecondary: Color(0xff46BDFA),

    // Gradient color button
    onTertiary: Color(0xff00c6ff),
    onTertiaryContainer: Color(0xff0072ff),
  );
}
