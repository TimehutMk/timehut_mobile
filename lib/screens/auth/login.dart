import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(child: Expanded(child: Column()));
  }
}
