import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";
  calcular() {
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);
    double imc = peso / (altura * altura);
    imc = num.parse(imc.toStringAsPrecision(3));
    if (imc < 16) {
      this.resp = 'Você está com magreza grave.\nPois seu IMC é $imc';
    } else if (imc < 17) {
      this.resp = 'Você está com magreza moderada.\nPois seu IMC é $imc';
    } else if (imc < 18.5) {
      this.resp = 'Você está com magreza leve.\nPois seu IMC é $imc';
    } else if (imc < 25) {
      this.resp = 'Você está saudável.\nPois seu IMC é $imc';
    } else if (imc < 30) {
      this.resp = 'Você está com sobrepeso.\nPois seu IMC é $imc';
    } else if (imc < 35) {
      this.resp = 'Você está com obsidade Grau I.\nPois seu IMC é $imc';
    } else if (imc < 40) {
      this.resp = 'Você está com obsidade Grau II (severa).\nPois seu IMC é $imc';
    } else {
      this.resp = 'Você está com obsidade Grau III (mórbida).\nPois seu IMC é $imc';
    }
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o seu peso',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe sua altura',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(calcular());
              setState(calcular);
            },
            child: Text(
              'Calcular',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
