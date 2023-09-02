import 'package:flutter/material.dart';
import 'package:timehut_mobile/screens/details/help_screen.dart';
import 'package:timehut_mobile/screens/employee/menu_screen.dart';
import 'package:timehut_mobile/screens/employee/shifts_screen.dart';
import 'package:timehut_mobile/screens/employee/time_count_screen.dart';
import 'package:timehut_mobile/screens/home_screen.dart';
import 'package:timehut_mobile/screens/details/information_screen.dart';
import 'package:timehut_mobile/screens/auth/login_screen.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case 'auth.login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case 'details.help':
        return MaterialPageRoute(
          builder: (_) => const HelpScreen(),
        );
      case 'details.information':
        return MaterialPageRoute(
          builder: (_) => const InformationScreen(),
        );
      case 'employee.menu':
        return MaterialPageRoute(
          builder: (_) => const MenuScreen(),
        );
      case 'employee.time_count':
        return MaterialPageRoute(
          builder: (_) => const TimeCountScreen(),
        );
      case 'employee.shifts':
        return MaterialPageRoute(
          builder: (_) => ShiftsScreen(),
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
