import 'package:flutter/material.dart';
import 'package:timehut_mobile/screens/details/help.dart';
import 'package:timehut_mobile/screens/employee/start_work.dart';
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
      case 'employee.start_work':
        return MaterialPageRoute(
          builder: (_) => const StartWork(),
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
