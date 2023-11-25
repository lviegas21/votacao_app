import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votacao_app/firebase_options.dart';
import 'package:votacao_app/presenter/binding/cadastro_binding.dart';
import 'package:votacao_app/presenter/binding/home_binding.dart';
import 'package:votacao_app/presenter/binding/login_binding.dart';
import 'package:votacao_app/ui/home/home_page.dart';
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
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
          transition: Transition.fade,
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/cadastro',
          page: () => const CadastroPage(),
          transition: Transition.fade,
          binding: CadastroBinding(),
        ),
        GetPage(
            name: '/home',
            page: () => const HomePage(),
            transition: Transition.fade,
            binding: HomeBinding()),
      ],
    );
  }
}
