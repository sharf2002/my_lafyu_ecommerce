import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  void Function()? onPressed;
  Widget icon;
  CustomIcon({Key? key, this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
          iconSize: 40,
          onPressed: onPressed, icon: icon),
    );
  }
}
