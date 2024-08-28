import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/cubit/main_cubit.dart';
import 'core/localizer/localizer.dart';
import 'core/utils/routing_manager/routing_manager.dart';
import 'core/utils/theme/them_manager.dart';
import 'package:provider/provider.dart';

import 'features/home/domain/use_cases/change_language.dart';

class TodoMain extends StatelessWidget {
  const TodoMain({Key? key}) : super(key: key);

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
      child: ChangeNotifierProvider(
        create: (_) => LocaleProvider(),
        child: Consumer<LocaleProvider>(
          builder: (context, localeProvider, child) {
            return MaterialApp(
              title: "To-do Unicode",
              localizationsDelegates: Localizer.localizationsDelegates,
              supportedLocales: L10n.all,
              locale: localeProvider.locale,
              debugShowCheckedModeBanner: false,
              theme: ThemManager.lightTheme,
              initialRoute: RouteManager.home,
              routes: RouteManager.routes,
              onGenerateRoute: RouteManager.generateRoute,
            );
          },
        ),
      ),
    );
  }
}



