import 'package:flutter/material.dart';

void main() {
  runApp(const Mybuttom());
}

class Mybuttom extends StatelessWidget {
  const Mybuttom({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("", textDirection: TextDirection.ltr);
  }
}
