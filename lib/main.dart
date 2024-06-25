import 'package:flutter/material.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

  

  @override
  Widget build(BuildContext context){

    final List<String> perguntas = [
      'Qual é sua cor preferida?',
      'Qual é seu animal favorito?'
    ];

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(child: Text('Resposta 1'), onPressed: null,),
            ElevatedButton(child: Text('Resposta 2'), onPressed: null,),
            ElevatedButton(child: Text('Resposta 3'), onPressed: null,)
          ],
        ),

      ),

    );
  }
}