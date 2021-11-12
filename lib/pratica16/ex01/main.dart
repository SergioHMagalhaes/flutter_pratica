import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

// O objeto da classe mensagem será enviado para a segunda rota.
class Mensagem {
  String titulo;
  String texto;
  Mensagem(this.titulo, this.texto);
}

class Preco {
  double etanol;
  double gasolina;
  String texto;
  Preco(this.etanol, this.gasolina);
  calcular() => etanol / gasolina;
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController etanolController = TextEditingController();
  final TextEditingController gasolinaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: etanolController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => etanolController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço do etanal',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: gasolinaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => gasolinaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço do gasolina',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Preco preco = Preco(
                double.parse(etanolController.text),
                double.parse(gasolinaController.text),
              );
              Navigator.push(context, MaterialPageRoute(builder: (context) => SegundaRota(preco)));
            },
            child: Text('Ir para a Segunda Rota'),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Preco preco;
  String resp = "";
  somar() {
    double num01 = preco.etanol;
    double num02 = preco.gasolina;
    double soma = num01 / num02;
    soma <= 7 ? this.resp = 'Abasteça com etanal!' : this.resp = 'Abasteça com gasolina!';
    return this.resp;
  }

  SegundaRota(this.preco);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${preco.etanol} / ${preco.gasolina}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${somar()}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
