import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:unicode/todo.dart';
import 'core/ injection/injector.dart';
import 'core/cubit/observer_cubit.dart';
import 'features/home/data/models/coffee_model_entity.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(CoffeeModelEntityAdapter());
  await Hive.openBox<CoffeeModelEntity>('coffeeBox');

  Injector.init();
  Bloc.observer = Observer();
  runApp(const TodoMain());
}

