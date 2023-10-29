import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votacao_app/shared/componets/theme/app_color.dart';

import '../service/cadastro_service.dart';

class GetxCadastroPageController extends GetxController {
  void onInit() {
    super.onInit();
  }

  CadastroService cadastroService = CadastroService();

  Rx<TextEditingController> nomeController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> senhaController = TextEditingController().obs;

  Future<void> singUp() async {
    Map chave = {
      "nome": nomeController.value.text,
      "email": emailController.value.text,
      "senha": senhaController.value.text,
    };
    try {
      await cadastroService.signUp(chave);
      Get.defaultDialog(
        backgroundColor: AppColor.backgroudContainerLogin,
        title: 'Sucesso',
        titleStyle: TextStyle(color: Colors.white),
        middleText: 'Usuário cadastrado com sucesso!',
        confirm: TextButton(
          onPressed: () {
            Get.back();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Text('ok', style: TextStyle(color: Colors.black)),
        ),
      );
    } catch (e) {}
  }
}
