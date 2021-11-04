import 'package:flutter/material.dart';
import 'componente/componente.dart';
import 'tela/tela.dart';

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('1');
    Botao botao = Botao('segunda');
    return Tela('Primeira Tela', corpo, botao);
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('2');
    Botoes botoes = Botoes('terceira');
    return Tela('Segunda Tela', corpo, botoes);
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('3');
    Botoes botoes = Botoes('');
    return Tela('Terceira Tela', corpo, botoes);
  }
}

class Corpo extends StatelessWidget {
  final String texto;
  Corpo(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${this.texto}',
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(25),
    );
  }
}
