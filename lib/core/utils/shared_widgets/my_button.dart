import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/utils/resources/resources_exporter.dart';
import 'activity_indicator.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? width;
  final double borderRadius;
  final bool isLoading;
  final bool isDisabled;
  final Color? color;

  const MyButton({
    super.key,
    this.onPressed,
    required this.text,
    this.color = ColorManager.primaryColor,
    this.width,
    this.isLoading = false,
    this.isDisabled = false,
    this.borderRadius = 10.0,
  });

  Color buttonColor(context) {
    return color ?? context.colorScheme.primary;
  }

  Color disabledColor(context) => color != null
      ? color!.withOpacity(0.6)
      : Theme.of(context).buttonTheme.colorScheme!.primary.withOpacity(0.6);

  EdgeInsetsGeometry get padding => EdgeInsetsDirectional.symmetric(
        horizontal: 11.h,
        vertical: 11.w,
      );

  ShapeBorder get shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.w,
      width: width,
      child: MaterialButton(
        elevation: 0,
        disabledElevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        padding: padding,
        shape: shape,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: buttonColor(context),
        disabledColor: disabledColor(context),
        onPressed: isLoading ? null : onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              title: text,
              align: TextAlign.center,
              color: context.textColor,
              fontWeight: FontWeight.w400,
              size: 14.sp,
            ),
            if (isLoading) ...[
              20.00.widthSpace,
              const ActivityIndicator(),
            ],
          ],
        ),
      ),
    );
  }
}
