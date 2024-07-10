import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp()); // main

class _PerguntaAppState extends State<PerguntaApp> {
  // classe privada

  var _perguntaSelecionada = 0; // atributo privado
  final _perguntas = const [ // variavel constante que contem uma lista de perguntas
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Azul', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Leão', 'Tigre', 'Urso', 'Águia'],
    },
    {
      'texto': 'Qual seu estilo de música preferido?',
      'respostas': ['Rock', 'Pop', 'Eletrônica', 'Hip Hop'],
    }
  ];

  void _responder() { // metodo que atualiza o estado
    if (temPerguntaSelecionada){
      setState(() {
      _perguntaSelecionada++; // indice das perguntas. Irá pular para proxima pergunta
      });
    }
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada].cast()['respostas'] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ) : Center(
          child: Text('Parabéns!',
          style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
