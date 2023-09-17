// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:timehut_mobile/screens/auth/login_screen.dart' as _i4;
import 'package:timehut_mobile/screens/details/help_screen.dart' as _i1;
import 'package:timehut_mobile/screens/details/information_screen.dart' as _i3;
import 'package:timehut_mobile/screens/employee/menu_screen.dart' as _i5;
import 'package:timehut_mobile/screens/employee/shifts_screen.dart' as _i6;
import 'package:timehut_mobile/screens/employee/time_count_screen.dart' as _i7;
import 'package:timehut_mobile/screens/home_screen.dart' as _i2;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HelpRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HelpScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    InformationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InformationScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    MenuRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MenuScreen(),
      );
    },
    ShiftsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ShiftsScreen(),
      );
    },
    TimeCountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TimeCountScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HelpScreen]
class HelpRoute extends _i8.PageRouteInfo<void> {
  const HelpRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HelpRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InformationScreen]
class InformationRoute extends _i8.PageRouteInfo<void> {
  const InformationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          InformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InformationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MenuScreen]
class MenuRoute extends _i8.PageRouteInfo<void> {
  const MenuRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ShiftsScreen]
class ShiftsRoute extends _i8.PageRouteInfo<void> {
  const ShiftsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ShiftsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShiftsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TimeCountScreen]
class TimeCountRoute extends _i8.PageRouteInfo<void> {
  const TimeCountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TimeCountRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeCountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
