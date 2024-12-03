import 'package:david_terceiro/login.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x80edd55a),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFedd55a),
        title: const Text(
          "Cadastro",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          key: _formKey,
          child: Form(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/banana-icon.jpg',
                  width: 110,
                  height: 110,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null) {
                      return "o campo de nome precisa ser preenchido!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Nome",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null) {
                      return "o campo de e-mail precisa ser preenchido!";
                    }
                    if (value.length < 5) {
                      return "o campo de e-mail precisa ter um mínimo de 5 caracteres!";
                    }
                    if (!value.contains("@")) {
                      return "o campo de e-mail precisa ter o arroba (@)";
                    }
                    if (!value.contains(".")) {
                      return "o campo de e-mail precisa ter o ponto ( . )";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null) {
                      return "o campo de senha precisa ser preenchido!";
                    }
                    if (value.length < 8) {
                      return "o campo de senha precisa ter um mínimo de 8 caracteres!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Senha",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 7,
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null) {
                      return "o campo de confirme a senha precisa ser preenchido!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Confirme a Senha",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF43423e),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        child: const Text(
                          "Cadastrar-se",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      });
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}