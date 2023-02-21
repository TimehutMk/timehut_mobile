import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 150,
        ),
        const Padding(
          padding: EdgeInsets.only(
            right: 50,
            left: 50,
            top: 10,
          ),
          child: Divider(
            color: Colors.blue,
            thickness: 1,
          ),
        )
      ],
    );
  }
}
