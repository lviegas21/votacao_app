import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AppFirebaseAuth {
  static Future<UserCredential> signInWithGoogle() async {
    if (Platform.isAndroid || Platform.isIOS) {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    }

    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@cest.edu.br'});
    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  }

  static Future<void> signInWithGoogleAndNavigate() async {
    final UserCredential userCredential = await signInWithGoogle();
    log(userCredential.toString());
    //caminho home
  }

  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    if (GoogleSignIn().currentUser != null) {
      await GoogleSignIn().signOut();
    }
    //caminho logout
  }
}
