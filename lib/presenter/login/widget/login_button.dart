// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:votacao_app/service/app_firebase_auth.dart';

class LoginButtom extends StatefulWidget {
  const LoginButtom({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginButtom> createState() => _LoginButtomState();
}

class _LoginButtomState extends State<LoginButtom> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      minWidth: 200,
      child: Text(
        "Entrar",
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      color: const Color.fromARGB(255, 89, 94, 160),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.zero,
      onPressed: () async {
        await AppFirebaseAuth.signInWithGoogleAndNavigate();
      },
    );
  }
}
