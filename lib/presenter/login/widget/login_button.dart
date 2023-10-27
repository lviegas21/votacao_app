import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:votacao_app/service/app_firebase_auth.dart';

class LoginButtom extends StatelessWidget {
  const LoginButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.zero,
      onPressed: AppFirebaseAuth.signInWithGoogleAndNavigate,
      color: Colors.blue,
      child: Container(
        width: 218,
        height: 47,
        padding: const EdgeInsets.all(9),
      ),
    );
  }
}
