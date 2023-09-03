import 'package:flutter/material.dart';
import 'package:timehut_mobile/app_registry.dart';
import 'package:timehut_mobile/themes/custom_theme.dart';

Future<void> main() async {
  await AppRegistry.createNewAndRegister();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Timehut',
      theme: CustomTheme.redTheme,
      routerConfig: AppRegistry.i.appRouter.config(),
    );
  }
}
