import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    required this.isObscure,
    this.validator
  }) : super(key: key);

  String labelText;
  IconData? prefixIcon;
  IconButton? suffixIcon;
  bool isObscure = false;
  String? Function(String?)? validator ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: validator,
        obscureText:isObscure ,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
