import 'package:david_terceiro/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  cadUser({
    required String email,
    required String senha,
    required String nome,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: senha,
    );
  }

  logUser({
    required String email,
    required String senha,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
         case 'user-not-found':
        return "Usuário não encontrado!";
      case 'wrong-password':
        return "Senha incorreta!";
      default:
        return "Erro: ${e.message}";
      }
    }
  }

logOut(BuildContext context) async {
  await _firebaseAuth.signOut();
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
    (route) => false, // Remove todas as rotas anteriores
  );
}

}
