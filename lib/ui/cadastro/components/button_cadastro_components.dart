import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votacao_app/presenter/cadastro_page_controller.dart';
import 'package:votacao_app/shared/componets/theme/app_color.dart';

class ButtonCadastroComponents extends StatelessWidget {
  const ButtonCadastroComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<GetxCadastroPageController>();
    return MaterialButton(
      height: 60,
      minWidth: 200,
      child: Text(
        "Cadastrar",
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      color: const Color.fromARGB(255, 89, 94, 160),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.zero,
      onPressed: () async {
        presenter.singUp();
      },
    );
  }
}
