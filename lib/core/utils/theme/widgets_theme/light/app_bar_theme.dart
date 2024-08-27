import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/core/utils/resources/resources_exporter.dart';

class AppBarThemeLight {
  static AppBarTheme appBarTheme = const AppBarTheme(
    color: ColorManager.whiteColor,
    foregroundColor: ColorManager.whiteColor,
    surfaceTintColor: ColorManager.whiteColor,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManager.containerL,
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
      size: 20.0,
    ),
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 18.0,
    ),
    // titleSpacing: 32,
    elevation: 0.0,
  );
}
