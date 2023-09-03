import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Function() onPressed;

  const Logo({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Image.asset(
            'assets/images/logo.png',
            height: 150,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            right: 50,
            left: 50,
            top: 10,
          ),
          child: Divider(
            color: Color.fromRGBO(58, 204, 225, 1),
            thickness: 1,
          ),
        )
      ],
    );
  }
}
