import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          _buildFooterButton(Icons.help, "Помош", 5),
          _buildFooterButton(Icons.info, "Информации", 5),
        ],
      ),
    );
  }

  Widget _buildFooterButton(IconData icon, String text, double paddingBottom) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: paddingBottom,
        ),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }
}
