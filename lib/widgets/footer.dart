import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          _buildFooterButton(
            Icons.help,
            "Помош",
            5,
            () {
              Navigator.pushNamed(context, 'help');
            },
          ),
          _buildFooterButton(
            Icons.info,
            "Информации",
            5,
            () {
              Navigator.pushNamed(context, 'information');
            },
          ),
        ],
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
