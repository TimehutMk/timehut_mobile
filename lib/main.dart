import 'package:flutter/material.dart';
import 'package:timehut_mobile/themes/custom_theme.dart';
import 'package:timehut_mobile/utilities/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timehut',
      theme: CustomTheme.redTheme,
      initialRoute: RouterGenerator.homeRoute,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
