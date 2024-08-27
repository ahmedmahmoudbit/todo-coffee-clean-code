import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_manager.dart';

const fontFamily = 'ar';

class TextStyleManager {
  static final title = TextStyle(
    color: ColorManager.textFormFieldColor,
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    fontFamily: fontFamily
  );

  static final screenTitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: ColorManager.blackColor,
      fontFamily: fontFamily,
  );

  static final screenTitleMedium = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    color: ColorManager.blackColor,
    fontFamily: fontFamily,

  );

  static final screenBodySmall = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: ColorManager.greyText1,
    fontFamily: fontFamily,

  );

  static final screenBodyVerySmall = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: ColorManager.blackColor,
    fontFamily: fontFamily,

  );

  static final button = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    fontFamily: fontFamily,

  );

  static final textButton = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: ColorManager.primaryColor,
    fontFamily: fontFamily,

  );

  static final screenBodyMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: ColorManager.blackColor,
    fontFamily: fontFamily,

  );

  static final formText = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: ColorManager.greyText1,
    fontFamily: fontFamily,

  );

  static final formHint = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: ColorManager.greyText2,
    fontFamily: fontFamily,

  );

  static final formLabel = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
  ).copyWith(
    color: ColorManager.textFormFieldColor,
    fontFamily: fontFamily,

  );
}
