import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});
  void responder() {
    print('Pergunta Respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[0]),
          ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
          Text(perguntas[1]),
          ElevatedButton(onPressed: responder, child: Text('Resposta 2'))
        ],
      ),
    ));
  }
}
