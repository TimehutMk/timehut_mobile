import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timehut_mobile/routers/app_router.gr.dart';
import 'package:timehut_mobile/widgets/logo.dart';

class AppBaseScaffold extends StatelessWidget {
  final Widget child;

  const AppBaseScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        child: Column(
          children: [
            Logo(
              onPressed: () => AutoRouter.of(context).push(const MenuRoute()),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
