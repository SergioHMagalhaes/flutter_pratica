import 'package:flutter/material.dart';
import 'descricao.dart';
import 'photos.dart';

class Home extends StatelessWidget {
  final List<Photo> photos;

  Home(this.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          ...photos.map((photo) => InkWell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.network(photo.url),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Descricao(photo.title, photo.cityName, photo.description),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
