import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastrarButton extends StatelessWidget {
  const CadastrarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Get.toNamed("/cadastro");
        },
        child: const Text(
          "Cadastrar-se",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
        ));
  }
}
