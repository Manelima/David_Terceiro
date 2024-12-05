import 'package:david_terceiro/cadastro.dart';
import 'package:david_terceiro/interna.dart';
import 'package:david_terceiro/home.dart';
import 'package:flutter/material.dart';
import 'package:david_terceiro/login.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cadastro(),
    ),
  );
}

