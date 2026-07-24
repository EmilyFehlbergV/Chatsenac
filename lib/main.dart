import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.white, body: Builder(
        builder: (context) {
          return Login();
        }
      )),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: [FlutterLogo(size: 18), Text("ChatSENAC") ]),
        //Titulos
        Text("Entre na sua conta",
          style: Tipografia.h1,
           ),
        Text("Coloque seu email e senha para logar"),
        //campos
        Text("Email", style: Tipografia.subtitulo   ),
        TextField(),
        Text("Senha",style: Tipografia.subtitulo),
        TextField(),
        InkWell(child: Text("Esqueceu a senha?",
          textAlign: TextAlign.right,
          style: Tipografia.Link,
        )),
        ElevatedButton(onPressed: null, child: Text("Entrar")),
        Text("ou", textAlign: TextAlign.center,),
        ElevatedButton(onPressed: null, child: Text("Continuar com Google")),
        ElevatedButton(onPressed: null, child: Text("Continuar com Facebook")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Não tem uma conta?", textAlign: TextAlign.center,),
            InkWell(child: Text("Cadastre-se", textAlign: TextAlign.center)),],
        )

      ],
    );
  }
}
