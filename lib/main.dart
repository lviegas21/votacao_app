import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:votacao_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
