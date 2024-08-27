import 'package:flutter/material.dart';

class TextThemeLight {
  static TextTheme textTheme = const TextTheme(
    displaySmall: TextStyle(
      fontFamily: 'ar',
      fontSize: 12.0,
      // fontFamily: isRtl ? 'mainAr' : 'mainEn',
      fontWeight: FontWeight.w400,
      // color: ColorManager.dark,
    ),
    displayMedium: TextStyle(
      fontFamily: 'ar',
      // fontFamily: isRtl ? 'mainAr' : 'mainEn',
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      // color: ColorManager.mainDark,
    ),
    displayLarge: TextStyle(
      fontFamily: 'ar',
      fontSize: 20.0,
      // fontFamily: isRtl ? 'mainAr' : 'mainEn',
      fontWeight: FontWeight.w700,
      // color: ColorManager.dark,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'ar',
      // fontFamily: isRtl ? 'mainAr' : 'mainEn',
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      // color: ColorManager.dark,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'ar',
      // fontFamily: isRtl ? 'mainAr' : 'mainEn',
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      // color: ColorManager.dark,
    ),
  );
}
