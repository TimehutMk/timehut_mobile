import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/footer.dart';
import 'package:timehut_mobile/widgets/logo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: const [
                Logo(),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
