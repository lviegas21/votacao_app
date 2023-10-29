import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;
  final bool? obscureSenha;
  final TextEditingController? controller;

  InputField(
      {required this.prefixIcon,
      required this.hintText,
      this.obscureSenha,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        obscureText: obscureSenha ?? false,
        style: const TextStyle(color: Color(0xFF0F192C), fontSize: 18),
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black),
            fillColor: Colors.white,
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
