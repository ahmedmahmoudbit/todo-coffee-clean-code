import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: MaterialApp(
        title: "To-do Unicode",
        localizationsDelegates: Localizer.localizationsDelegates,
        supportedLocales: Localizer.languages,
        locale: Localizer.ar.locale,
        debugShowCheckedModeBanner: false,
        theme: ThemManager.lightTheme,
        initialRoute: RouteManager.home,
        routes: RouteManager.routes,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}