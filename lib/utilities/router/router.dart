import 'package:flutter/material.dart';
import 'package:timehut_mobile/screens/home.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => const Home(),
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
