import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/footer.dart';
import 'package:timehut_mobile/widgets/logo.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
