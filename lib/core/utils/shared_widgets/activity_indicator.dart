import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/core/utils/resources/resources_exporter.dart';

class ActivityIndicator extends StatelessWidget {
  final Color? color;

  const ActivityIndicator({super.key, this.color});

  Color? _color(context) {
    if (color != null) {
      return color;
    }
    return Theme.of(context).brightness == Brightness.dark
        ? ColorManager.blackColor
        : ColorManager.whiteColor;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      color: _color(context),
    );
  }
}
