import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/footer.dart';
import 'package:timehut_mobile/widgets/logo.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Logo(),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}