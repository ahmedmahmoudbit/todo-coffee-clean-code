import 'package:flutter/material.dart';

import '/core/utils/resources/resources_exporter.dart';

class BottomNavigationBarThemeDataLight {
  static BottomNavigationBarThemeData bottomNavigationBarThemeData =
      const BottomNavigationBarThemeData(
    elevation: 2.0,
    backgroundColor: ColorManager.containerL,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    unselectedItemColor: ColorManager.blurDark,
    selectedItemColor: ColorManager.blurDark,
    unselectedLabelStyle: TextStyle(
      color: ColorManager.blurDark,
      // fontFamily: isRtl ? 'mainAr' : 'mainEn',
    ),
    selectedLabelStyle: TextStyle(
        // color: ColorManager.blurDark,
        // fontFamily: isRtl ? 'mainAr' : 'mainEn',
        ),
  );
}
