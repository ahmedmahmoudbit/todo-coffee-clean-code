import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

import '../../localizer/localizer.dart';
import 'resources_exporter.dart';

extension SpacesManager on double {
  SizedBox get heightSpace => SizedBox(height: h);

  SizedBox get widthSpace => SizedBox(width: w);
}

final appbarHeight = AppBar().preferredSize.height;

extension MediaQueryValues on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;

  T cubit<T extends Cubit>() => BlocProvider.of<T>(this);

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get statusBar => MediaQuery.of(this).viewPadding.top;

  double get heightScreen => height - appbarHeight - statusBar - (width * 0.07);

  double get heightScreenWithOutBottom =>
      height - appbarHeight - statusBar - (width * 0.14);

  Color get primaryColor => Theme.of(this).primaryColor;

  Color get scaffoldColor => Theme.of(this).scaffoldBackgroundColor;

  Color get textColor => Theme.of(this).colorScheme.inversePrimary;

  Color get borderColor => Theme.of(this).colorScheme.onInverseSurface;

  Color get blackColor => Theme.of(this).colorScheme.onPrimary;

  Color get gray3Color => ColorManager.greyText3;

  Color get whiteColor => Theme.of(this).colorScheme.inversePrimary;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension StringExtension on String {
  String get toFlag {
    return (this).toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  }

  bool get isValidName {
    return !contains(RegExp(r'[0-9]'));
  }

  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  String complete(int size) {
    return length > size ? '${substring(0, size)}...' : this;
  }
}

extension ExtendeNavigator on BuildContext {
  void pushAndFinish(String routeName) => Navigator.pushNamedAndRemoveUntil(
        this,
        routeName,
        (route) => false,
      );

  Future<dynamic> pushAndRemovePage(String routeName) {
    return Navigator.pushReplacementNamed(this, routeName);
  }

  void push(routeName) => Navigator.pushNamed(this, routeName);

  void pushArgument<T>({
    required String routeName,
    required T arguments,
  }) =>
      Navigator.pushNamed(
        this,
        routeName,
        arguments: arguments,
      );

  void pushArgumentAndFinish<T>({
    required String routeName,
    required T arguments,
  }) =>
      Navigator.pushNamedAndRemoveUntil(
        this,
        routeName,
        (route) => false,
        arguments: arguments,
      );

  Object? get navigatorArgument {
    if (ModalRoute.of(this) != null) {
      return ModalRoute.of(this)!.settings.arguments;
    } else {
      return null;
    }
  }

  void pop() {
    return Navigator.of(this).pop();
  }

  Future<void> pushAndRecord({
    required String routeName,
    required Object? arguments,
    required Function(Object?) onReturn,
  }) async {
    final result = await Navigator.pushNamed(
      this,
      routeName,
      arguments: arguments,
    );

    if (!mounted) return;

    onReturn(result);
  }
}

extension NumberExtension on num {
  // borderRadius : 8.radius
  BorderRadius get radius => BorderRadius.circular(toDouble());

  // Future.delayed(1.duration)
  Duration get duration => Duration(milliseconds: toInt());
}

extension FileExtensions on File {
  String get size => '${(lengthSync() / 1024).toStringAsFixed(0)} KB';

  String get extension {
    return path.extension(this.path);
  }

  String get name {
    return path.basename(this.path);
  }
}
