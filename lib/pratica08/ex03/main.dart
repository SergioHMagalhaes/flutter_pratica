import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(250),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow.shade700,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: Image(
                image: NetworkImage(
                  'https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif',
                ),
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
