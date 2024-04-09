import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
      if (perguntaSelecionada > 2) {
        perguntaSelecionada = 0;
      }
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
      'Qual sua comida favorita?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(onPressed: responder, child: const Text('Resposta 1')),
          ElevatedButton(onPressed: responder, child: const Text('Resposta 1')),
          ElevatedButton(onPressed: responder, child: const Text('Resposta 1')),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
