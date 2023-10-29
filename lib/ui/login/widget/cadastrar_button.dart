import 'package:flutter/material.dart';

class CadastrarButton extends StatelessWidget {
  const CadastrarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          "Cadastrar-se",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
        ));
  }
}
