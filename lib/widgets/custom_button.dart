import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final Icon? icon;
  final Color backgroundColor;
  final Color textColor;
  final Size? size;
  final double? iconSize;
  final Function() function;

  const CustomButton({
    this.buttonText,
    this.icon,
    this.size,
    this.iconSize,
    required this.backgroundColor,
    required this.textColor,
    required this.function,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 10,
        fixedSize: size ?? const Size(280, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (icon != null)
            Icon(
              icon!.icon,
              size:
                  iconSize ?? 24.0,
              color: textColor,
            ),
          if (icon != null && buttonText != null) const SizedBox(width: 10),
          if (buttonText != null)
            Text(
              buttonText!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
        ],
      ),
    );
  }
}
