import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';
import 'cadastro.dart';
import 'dashboard.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  final emailControlador = TextEditingController();
  final senhaControlador = TextEditingController();

  Future<void> fazerLogin() async {
    var url = Uri.http("10.112.4.33", "login");
    var resposta = await http.post(
        url,
        headers: {
          "Content-Type": "application/json"
        },
        body: jsonEncode({'email': emailControlador.text,'senha':senhaControlador.text}),
    );


    if (resposta.statusCode != 200) {
      var dados = jsonDecode(resposta.body);


      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("${dados["message"]}")),
      );

      return;
    }
    Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

  }

  @override
  Widget build(BuildContext context) {
    bool esconder = true;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            //child column?😭☠️☠️☠️☠️☠️
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  FlutterLogo(size: 18),
                  const SizedBox(width: 8),
                  Text("ChatSENAC"),
                ],
              ),
              SizedBox(height: 32),

              //Titulos
              Text("Entre na sua conta", style: Tipografia.h1),
              SizedBox(height: 12),
              Text(
                "Coloque seu email e senha para logar",
                style: Tipografia.subtitulo,
              ),
              const SizedBox(height: 32),
              //campos
              Text("Email", style: Tipografia.subtitulo),
              TextField(
                controller: emailControlador   ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  isDense: true,
                ),
              ),

              const SizedBox(height: 16),

              Text("Senha", style: Tipografia.subtitulo),
              TextField(

                controller: senhaControlador,
                obscureText: esconder,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(esconder ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        esconder = !esconder;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 16),

              InkWell(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                  style: Tipografia.link,
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: fazerLogin ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 24.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Entrar"),
              ),
              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Ou"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,

                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 24.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset("assets/imagens/google-icon.png", height: 18),
                    Text("Continuar com Google"),
                  ],
                ),
              ),

              SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,

                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 24.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset("assets/imagens/facebook-icon.png", width: 18,),
                    const Text("Continuar com Facebook"),
                  ],
                ),
              ),

              SizedBox(height: 54),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem uma conta?", textAlign: TextAlign.center),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cadastro()),
                      );
                    },

                    child: Text(
                      "Cadastre-se",
                      textAlign: TextAlign.center,
                      style: Tipografia.link,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}