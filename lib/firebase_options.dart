import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCAgKVIKrgzQ665FlfswDmidYTqT4nQ_0w',
    appId: '1:97079900508:web:356978559b250688c4e999',
    messagingSenderId: '97079900508',
    projectId: 'igrejavotacao',
    authDomain: 'igrejavotacao.firebaseapp.com',
    storageBucket: 'igrejavotacao.appspot.com',
    measurementId: 'G-K7N8YTMFH0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCslfNkAxBYtWafNJJkXqYoLWvJrLYvN0A',
    appId: '1:97079900508:android:4ddde4522e5b8cebc4e999',
    messagingSenderId: '97079900508',
    projectId: 'igrejavotacao',
    storageBucket: 'igrejavotacao.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgiEE5D17ij4jFf8Z0dgMTGFdNh8Wn9Ho',
    appId: '1:97079900508:ios:92aedb4938be5ebbc4e999',
    messagingSenderId: '97079900508',
    projectId: 'igrejavotacao',
    storageBucket: 'igrejavotacao.appspot.com',
    androidClientId:
        '97079900508-ch05sgfdto8r5t39cjlfsfi4havi76n6.apps.googleusercontent.com',
    iosClientId:
        '97079900508-4b5dv7jfhqonu0og75m1ls2sl5kq28g5.apps.googleusercontent.com',
    iosBundleId: 'com.example.votacaoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgiEE5D17ij4jFf8Z0dgMTGFdNh8Wn9Ho',
    appId: '1:97079900508:ios:2299a615ec6a8e11c4e999',
    messagingSenderId: '97079900508',
    projectId: 'igrejavotacao',
    storageBucket: 'igrejavotacao.appspot.com',
    androidClientId:
        '97079900508-ch05sgfdto8r5t39cjlfsfi4havi76n6.apps.googleusercontent.com',
    iosClientId:
        '97079900508-p8hr7eid9002g4oupggm9jqkqpj2r9fm.apps.googleusercontent.com',
    iosBundleId: 'com.example.votacaoApp.RunnerTests',
  );
}
