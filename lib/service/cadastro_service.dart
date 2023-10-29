import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CadastroService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;
  // @override
  // Future auth(Map params) async {
  //   try {
  //     final response = await _firebaseAuth.signInWithEmailAndPassword(
  //         email: params["email"], password: params["senha"]);
  //     return response;
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  @override
  Future signUp(Map params) async {
    try {
      final response = await _firebaseAuth.createUserWithEmailAndPassword(
          email: params["email"], password: params["senha"]);
      final saveUsuario =
          await firestore.collection("usuarios").doc(response.user?.uid).set({
        'nome': params["nome"],
        'email': params["email"],
        'senha': params["senha"],
      });
      return response;
    } catch (e) {
      throw e;
    }
  }
}
