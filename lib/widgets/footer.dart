import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timehut_mobile/routers/app_router.gr.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0), // Add space at the top
      child: Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Column(
          children: [
            _buildFooterButton(
              Icons.help,
              "Помош",
              5,
              () => AutoRouter.of(context).push(const HelpRoute()),
            ),
            _buildFooterButton(
              Icons.info,
              "Информации",
              5,
              () => AutoRouter.of(context).push(const InformationRoute()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterButton(
    IconData icon,
    String text,
    double paddingBottom,
    VoidCallback onPressed,
  ) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: paddingBottom,
        ),
        child: GestureDetector(
          onTap: onPressed,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(icon),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
