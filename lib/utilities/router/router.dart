import 'package:flutter/material.dart';
import 'package:timehut_mobile/screens/details/help.dart';
import 'package:timehut_mobile/screens/employee/menu.dart';
import 'package:timehut_mobile/screens/employee/shifts.dart';
import 'package:timehut_mobile/screens/employee/time_count.dart';
import 'package:timehut_mobile/screens/home.dart';
import 'package:timehut_mobile/screens/details/information.dart';
import 'package:timehut_mobile/screens/auth/login.dart';
import 'package:timehut_mobile/screens/auth/register.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case 'auth.login':
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case 'auth.register':
        return MaterialPageRoute(
          builder: (_) => const Register(),
        );
      case 'details.help':
        return MaterialPageRoute(
          builder: (_) => const Help(),
        );
      case 'details.information':
        return MaterialPageRoute(
          builder: (_) => const Information(),
        );
      case 'employee.menu':
        return MaterialPageRoute(
          builder: (_) => const Menu(),
        );
      case 'employee.time_count':
        return MaterialPageRoute(
          builder: (_) => const TimeCount(),
        );
      case 'employee.shifts':
        return MaterialPageRoute(
          builder: (_) => const Shifts(),
        );
      default:
        return _error();
    }
  }

  static String homeRoute = 'home';

  static Route<dynamic> _error() {
    return MaterialPageRoute(
      builder: (_) => const Text(
        '404: Not Found',
      ),
    );
  }
}
