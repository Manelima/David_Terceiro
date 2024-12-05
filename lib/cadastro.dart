import 'package:david_terceiro/auth.dart';
import 'package:david_terceiro/login.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _senhaController = TextEditingController();

  final TextEditingController _nomeController = TextEditingController();

  final AuthService _authServ = AuthService();

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
                  'assets/banana-icon.jpg',
                  width: 110,
                  height: 110,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _nomeController,
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
                  controller: _emailController,
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
                  controller: _senhaController,
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
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed:() {
                        botaoCads();
                      } ,
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

  botaoCads() {
    String email = _emailController.text;
    String senha = _senhaController.text;
    String nome = _nomeController.text;

    print("Email: $email, Senha: $senha, Nome: $nome");

    if (_formKey.currentState!.validate()) {
      print("Cadastro validado!");
      print("${_emailController.text}");
      print("${_senhaController.text}");
      print("${_nomeController.text}");
      _authServ.cadUser(email: email, senha: senha, nome: nome);
    } else {
      print("Formulário NÃO funcionando");
    }
  }
}
