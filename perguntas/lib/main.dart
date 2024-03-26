import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas[0]),
          ElevatedButton(onPressed: null, child: const Text('Resposta 1')),
          Text(perguntas[1]),
          ElevatedButton(onPressed: null, child: const Text('Resposta 2'))
        ],
      ),
    ));
  }
}
