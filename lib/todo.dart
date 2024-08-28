import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/cubit/main_cubit.dart';

import 'core/localizer/localizer.dart';
import 'core/utils/routing_manager/routing_manager.dart';
import 'core/utils/theme/them_manager.dart';

class TodoMain extends StatelessWidget {
  const TodoMain({super.key,});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => MainCubit(),
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            return state.maybeWhen(
              ChangeLanguage: (local) => MaterialApp(
                title: "To-do Unicode",
                localizationsDelegates: Localizer.localizationsDelegates,
                supportedLocales: Localizer.languages,
                locale: local,
                debugShowCheckedModeBanner: false,
                theme: ThemManager.lightTheme,
                initialRoute: RouteManager.home,
                routes: RouteManager.routes,
                onGenerateRoute: RouteManager.generateRoute,
              ),
              orElse: () => MaterialApp(
                title: "To-do Unicode",
                localizationsDelegates: Localizer.localizationsDelegates,
                supportedLocales: Localizer.languages,
                locale: Locale('en'),
                debugShowCheckedModeBanner: false,
                theme: ThemManager.lightTheme,
                initialRoute: RouteManager.home,
                routes: RouteManager.routes,
                onGenerateRoute: RouteManager.generateRoute,
              ),
            );
          },
        ),
      ),
    );
  }
}