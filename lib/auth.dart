import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  cadUser({
    required String email,
    required String senha,
    required String nome,
  }) async{
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: senha,
      );
  }
}