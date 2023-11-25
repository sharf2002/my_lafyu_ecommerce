import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  String text;
  void Function()? onPressed;
  double? borderRadius;
  double? buttonWidth;
  double? buttonHeight;
  Color? color;
  CustomButtons(
      {Key? key,
      required this.text,
      this.onPressed,
      this.borderRadius,
      this.buttonWidth,
      this.buttonHeight,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          minimumSize: Size(buttonWidth!, buttonHeight!)),
    );
  }
}
