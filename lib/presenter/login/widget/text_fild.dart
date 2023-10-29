import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;
  final bool? obscureSenha;

  InputField(
      {required this.prefixIcon, required this.hintText, this.obscureSenha});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        obscureText: obscureSenha ?? false,
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
