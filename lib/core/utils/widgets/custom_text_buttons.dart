import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  void Function()? onPressed ;
  String text ;
  CustomTextButton({Key? key ,
    this.onPressed,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}
