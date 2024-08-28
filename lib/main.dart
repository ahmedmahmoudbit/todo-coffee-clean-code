import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/todo.dart';
import 'core/ injection/injector.dart';
import 'core/cubit/observer_cubit.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Injector.init();
  Bloc.observer = Observer();
  runApp(const TodoMain());
}

