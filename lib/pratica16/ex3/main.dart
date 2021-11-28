import 'package:flutter/material.dart';
import 'rotas/home.dart';
import 'rotas/photos.dart';

void main() => runApp(
      MaterialApp(
        home: Home(Photo.getPhotos()),
      ),
    );
