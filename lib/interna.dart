import 'package:david_terceiro/auth.dart';
import 'package:flutter/material.dart';

class Interna extends StatefulWidget {
  const Interna({Key? key}) : super(key: key);

  @override
  State<Interna> createState() => _InternaState();
}

class _InternaState extends State<Interna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF43423e),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFedd55a),
        title: const Text(
          "Sistema Bananos",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0x8043423e),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Seja bem vindo(a), sr(a) ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Pessoa",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 16),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService().logOut();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFedd55a),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
