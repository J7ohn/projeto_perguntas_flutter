import 'package:flutter/material.dart';

class Resposta extends StatelessWidget{

  final String texto; // atributos
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado); // construtor
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // largura do bortao

      child: ElevatedButton(  // botao
        style: ElevatedButton.styleFrom( // estilo do botao
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),

        child: Text(texto), // texto do botao

        onPressed: quandoSelecionado,
      
      ),
    );
  }
}