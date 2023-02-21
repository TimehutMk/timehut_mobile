import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  Color backgroundColor;
  Color textColor;

  CustomButton({
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 10,
        fixedSize: const Size(280, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
