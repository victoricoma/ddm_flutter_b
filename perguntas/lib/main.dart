import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text('Pergunta numero 1?'),
          ElevatedButton(
            onPressed: null, 
            child: const Text('Resposta 1')
            )
        ],
      ),
    ));
  }
}
