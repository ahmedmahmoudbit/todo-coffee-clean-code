import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/core/utils/resources/resources_exporter.dart';

class DarkTheme {
  static ThemeData get darkTheme => ThemeData(
        /// Dark Theme - new implementation
        buttonTheme: const ButtonThemeData(
          colorScheme: ColorScheme.light(
            primary: ColorManager.primaryColor, // button color
          ),
        ),

        /// Dark Theme - new implementation end

        // scaffoldBackgroundColor: ColorManager.scaffoldColorD,
        // canvasColor: ColorManager.containerD,
        // primaryColor: ColorManager.mainColor,

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 2.0,
          backgroundColor: ColorManager.containerD,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: ColorManager.goldy,
          selectedItemColor: ColorManager.goldy,
          unselectedLabelStyle: TextStyle(
            color: ColorManager.goldy,
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
          ),
          selectedLabelStyle: TextStyle(
            color: ColorManager.goldy,
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
          ),
        ),

        colorScheme: const ColorScheme.dark(
          // select item
          primary: ColorManager.goldy,
          // toggle
          inversePrimary: ColorManager.toggleD,
          // color text
          onInverseSurface: ColorManager.blackColor,
          // select container shadow
          onSecondary: Color(0xffffd441),

          // Gradient color button
          onTertiary: Color(0xfff9eb32),
          onTertiaryContainer: Color(0xffffa448),
        ),
        dividerTheme: const DividerThemeData(
          color: Colors.white30,
          space: 0.5,
          thickness: 0.5,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: ColorManager.whiteColor,
          surfaceTintColor: ColorManager.whiteColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.whiteColor,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          backgroundColor: ColorManager.whiteColor,
          elevation: 5.0,
          iconTheme: IconThemeData(
            size: 20.0,
            color: ColorManager.goldy,
          ),
          titleTextStyle: TextStyle(
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
            fontSize: 18.0,
            color: ColorManager.goldy,
          ),
        ),
        primarySwatch: ColorManager.primarySwatch,
        cardTheme: CardTheme(
          color: ColorManager.cardMainD,
          elevation: 2.0,
          margin: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        textTheme: TextTheme(
          displaySmall: const TextStyle(
            fontSize: 13.0,
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          displayMedium: const TextStyle(
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: ColorManager.whiteColor,
          ),
          displayLarge: const TextStyle(
            fontSize: 20.0,
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          headlineMedium: const TextStyle(
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headlineLarge: const TextStyle(
            // fontFamily: isRtl ? 'mainAr' : 'mainEn',
            fontSize: 28.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          // bodyMedium: TextStyleManager.button.copyWith(
          //   color: ColorManager.blackColor,
          // ),

          /// new implementation
        ),
      );
}
