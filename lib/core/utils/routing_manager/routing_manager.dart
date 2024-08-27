
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicode/core/utils/routing_manager/unknown_route.dart';
import 'package:unicode/features/details/presentation/pages/details_screen.dart';

import '../../ injection/injector.dart';
import '../../../features/home/presentation/manager/home_cubit.dart';
import '../../../features/home/presentation/pages/home_screen.dart';

class RouteManager {
  static const home = '/';
  static const details = '/login';

  static final routes = {
    details: (context) => const DetailsScreen(),
    home: (context) => BlocProvider(
        create: (context) => di<HomeCubit>(),
        child: const HomeScreen()),
  };

  static Route pageRoute(Widget routeWidget) =>
      CupertinoPageRoute(builder: (_) => routeWidget);
  static const pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeMap = {
      details: const DetailsScreen(),
      home: const HomeScreen(),
    };
    final route = routeMap[settings.name];
    return pageRoute(route ?? const UnknownRouteWidget());
  }
}