import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:votacao_app/presenter/login/widget/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoginButtom(),
      ),
    );
  }
}
