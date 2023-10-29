import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;

  InputField({required this.prefixIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            fillColor: Colors.white,
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
