import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
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
                'https://i.picsum.photos/id/37/250/250.jpg?hmac=ZMIo0U9qQ6H3-jXK1khrSHzz-JeUuFQw5Hu0VO8Sdjg',
              ),
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    ),
  );
}
