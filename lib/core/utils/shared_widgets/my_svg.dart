import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MySvg extends StatelessWidget {
  final String img;
  final double? height;
  final double? width;
  final Color? color;
  final bool fill;

  const MySvg({
    super.key,
    required this.img,
    this.height,
    this.width,
    this.color,
    this.fill = true,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      img,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      height: height ?? 35.h,
      fit: !fill ? BoxFit.scaleDown : BoxFit.cover,
      width: width ?? 35.w,
    );
  }
}
