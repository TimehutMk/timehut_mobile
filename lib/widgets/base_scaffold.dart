import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
