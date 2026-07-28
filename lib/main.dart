import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
          builder: (context) {
            return SafeArea(child: Login());
          },
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column( //child column?😭☠️☠️☠️☠️☠️
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 16,
      children: [
        Row(children: [FlutterLogo(size: 18), const SizedBox(width: 8),
        Text("ChatSENAC")]),
        SizedBox(height: 32),

        //Titulos
        Text("Entre na sua conta", style: Tipografia.h1),
        Text("Coloque seu email e senha para logar", style: Tipografia.subtitulo,),
        const SizedBox(height: 12),
        //campos
        Text("Email", style: Tipografia.subtitulo),
        const SizedBox(height: 2,),
        TextField(),

        const SizedBox(height: 16),

        Text("Senha", style: Tipografia.subtitulo),
        const SizedBox(height: 2,),
        TextField(obscureText: true),
        const SizedBox(height: 16),

        InkWell(
          child: Text(
            "Esqueceu a senha?",
            textAlign: TextAlign.right,
            style: Tipografia.Link,

          ),
        ),
        const SizedBox(height: 5),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Text("Entrar"),
        ),
        const SizedBox(height: 4,),

        Row(
          children: [
            Expanded(child: Divider()),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("ou"),
            ),
            Expanded(child: Divider())

          ],
        ),

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
            children: [

              const Icon(Icons.g_mobiledata, size: 18),

              const SizedBox(width: 10),

              const Text("Continuar com Google"),
            ],
          ),
        ),

        const SizedBox(height: 12),

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
            children: [

              const Icon(Icons.facebook, size: 18, color: Colors.blue),

              const SizedBox(width: 10),

              const Text("Continuar com Facebook"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Não tem uma conta?", textAlign: TextAlign.center),
            SizedBox(width: 5,),
            InkWell(child: Text("Cadastre-se",

                textAlign: TextAlign.center,
                style: Tipografia.Link)),

          ],
        ),
      ],
    )
    );
  }
}
