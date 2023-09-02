import 'package:flutter/material.dart';
import 'package:timehut_mobile/screens/help.dart';
import 'package:timehut_mobile/screens/home.dart';
import 'package:timehut_mobile/screens/information.dart';
import 'package:timehut_mobile/screens/login.dart';
import 'package:timehut_mobile/screens/register.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case 'login':
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case 'register':
        return MaterialPageRoute(
          builder: (_) => const Register(),
        );
      case 'help':
        return MaterialPageRoute(
          builder: (_) => const Help(),
        );
      case 'information':
        return MaterialPageRoute(
          builder: (_) => const Information(),
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
