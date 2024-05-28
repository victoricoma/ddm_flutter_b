import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;
  final perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': [
        {'texto': 'São Paulo', 'pontuacao': 10},
        {'texto': 'Corinthians', 'pontuacao': 5},
        {'texto': 'Santos', 'pontuacao': 3},
        {'texto': 'Palmeiras', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu deus do rock favorito?',
      'respostas': [
        {'texto': 'Fred Mercury', 'pontuacao': 10},
        {'texto': 'Elvis Presley', 'pontuacao': 5},
        {'texto': 'Kurt Cobain', 'pontuacao': 3},
        {'texto': 'Jhon Lenon', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é a sua universidade favorita?',
      'respostas': [
        {'texto': 'USP', 'pontuacao': 10},
        {'texto': 'UNESP', 'pontuacao': 5},
        {'texto': 'Unicamp', 'pontuacao': 3},
        {'texto': 'UFSCar', 'pontuacao': 1},
      ],
    },
  ];
  void responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
    print(pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: perguntaSelecionada,
                quandoResponder: responder,
              )
            :  const Resultado(),
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
