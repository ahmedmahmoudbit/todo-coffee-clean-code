import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.title,
    this.style,
    this.color,
    this.size,
    this.align,
    this.maxLine,
    this.fontFamily,
    this.fontWeight,
  });

  final String title;
  final TextStyle? style;
  final Color? color;
  final double? size;
  final int? maxLine;
  final TextAlign? align;
  final String? fontFamily;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align ?? TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine ?? 999,
      style: style ??
          Theme.of(context).textTheme.displaySmall!.copyWith(
                color:
                    color ?? Theme.of(context).textTheme.displaySmall!.color!,
                fontFamily: fontFamily ??
                    Theme.of(context).textTheme.displaySmall!.fontFamily!,
                fontSize:
                    size ?? Theme.of(context).textTheme.displaySmall!.fontSize!,
                fontWeight: fontWeight ??
                    Theme.of(context).textTheme.displaySmall!.fontWeight!,
                wordSpacing: 0.6,
                height: 1.2.sp,
              ),
    );
  }
}
