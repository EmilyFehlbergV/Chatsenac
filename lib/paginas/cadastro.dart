import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Cadastro"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            const SizedBox(height: 20),

            // Título
            Text(
              "Crie sua conta",
              style: Tipografia.h1,
            ),

            const SizedBox(height: 6),

            Text(
              "Preencha os dados abaixo para se cadastrar",
              style: Tipografia.subtitulo,
            ),

            const SizedBox(height: 25),

            // Nome
            Text(
              "Nome",
              style: Tipografia.subtitulo,
            ),

            const SizedBox(height: 6),

            TextField(
              decoration: InputDecoration(
                hintText: "Digite seu nome",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 13),

            // Email
            Text(
              "Email",
              style: Tipografia.subtitulo,
            ),

            const SizedBox(height: 6),

            TextField(
              decoration: InputDecoration(
                hintText: "Digite seu email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 13),

            // Senha
            Text(
              "Senha",
              style: Tipografia.subtitulo,
            ),

            const SizedBox(height: 6),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "********",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 13),

            // Confirmar senha
            Text(
              "Confirmar senha",
              style: Tipografia.subtitulo,
            ),

            const SizedBox(height: 6),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "********",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Botão Cadastrar
            ElevatedButton(
              onPressed: () {
                // Lógica do cadastro
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}