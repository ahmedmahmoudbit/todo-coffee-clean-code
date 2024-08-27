import 'package:flutter/material.dart';
import '/core/utils/resources/resources_exporter.dart';


abstract class RadioThemeLight {
  static RadioThemeData light = RadioThemeData(
    fillColor: WidgetStateProperty.all(ColorManager.primaryColor),
    overlayColor: WidgetStateProperty.all(ColorManager.primaryColor.withOpacity(0.1)),
    splashRadius: 20.0,
    visualDensity: VisualDensity.standard,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
