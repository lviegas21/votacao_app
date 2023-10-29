import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votacao_app/presenter/cadastro_page_controller.dart';

import '../../shared/componets/theme/app_color.dart';
import '../login/widget/text_fild.dart';
import 'components/button_cadastro_components.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<GetxCadastroPageController>();
    return Scaffold(
      backgroundColor: AppColor.backgroundLogin,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColor.backgroudContainerLogin,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(blurRadius: 8.0),
                  ]),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 70, bottom: 50),
                    child: Text(
                      "Cadastro",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InputField(
                      controller: presenter.nomeController.value,
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Nome"),
                  const SizedBox(
                    height: 10,
                  ),
                  InputField(
                      controller: presenter.emailController.value,
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Email"),
                  const SizedBox(
                    height: 10,
                  ),
                  InputField(
                    controller: presenter.senhaController.value,
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Senha",
                    obscureSenha: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const ButtonCadastroComponents(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
