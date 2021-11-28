import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  final String titulo;
  final String nomeDaCidade;
  final String descricao;

  Descricao(this.titulo, this.nomeDaCidade, this.descricao);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.nomeDaCidade),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                this.titulo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            Container(
              child: Text(
                this.descricao,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              margin: EdgeInsets.all(30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Voltar para a Primeira Rota',
        child: Icon(Icons.arrow_back_sharp),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}