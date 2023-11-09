import 'package:flutter/material.dart';
import 'package:votacao_app/shared/componets/theme/app_color.dart';
import 'package:votacao_app/ui/login/componets/cadastrar_button.dart';
import 'package:votacao_app/ui/login/componets/login_button.dart';
import 'package:votacao_app/ui/login/componets/text_fild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundLogin,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
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
                            "Login",
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
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Email"),
                        const SizedBox(
                          height: 10,
                        ),
                        InputField(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: "Senha",
                          obscureSenha: true,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const LoginButtom(),
                        const SizedBox(height: 20),
                        const CadastrarButton()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
