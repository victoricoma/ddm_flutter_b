import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  final perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': ['São Paulo', 'Corinthians', 'Santos', 'Palmeiras']
    },
    {
      'texto': 'Qual é o seu deus do rock favorito?',
      'respostas': [
        'Fred Mercury',
        'Elvis Presley',
        'Kurt Cobain',
        'Jhon Lenon'
      ]
    },
    {
      'texto': 'Qual é a sua universidade favorita?',
      'respostas': ['USP', 'UNESP', 'Unicamp', 'UFSCar']
    },
  ];
  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(perguntas[perguntaSelecionada]['texto'] as String),
                  ...respostas.map((t) => Resposta(t, responder)).toList()
                ],
              )
            : const Text('Acabou as Perguntas'),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
