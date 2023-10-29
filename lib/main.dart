import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:votacao_app/firebase_options.dart';
import 'package:get/get.dart';
import 'package:votacao_app/util/theme_data.dart';

import 'ui/cadastro/cadastro_page.dart';
import 'ui/login/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Votação App',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/cadastro',
          page: () => const CadastroPage(),
          transition: Transition.fade,
        ),
      ],
    );
  }
}
