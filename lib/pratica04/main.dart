import 'package:flutter/material.dart';

void main() {
  runApp(
    Row(
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage(
                'https://i.picsum.photos/id/10/250/250.jpg?hmac=NNp-lg6CHNk6pAJZjq2W7Sytq2d27gooXIF74HGs0VY',
              ),
            ),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage(
                'https://i.picsum.photos/id/25/250/250.jpg?hmac=toAZQQfUUp-Aj-OSDyKheYtvm2WBLh_v_c7_VJw05D8',
              ),
            ),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage(
                'https://i.picsum.photos/id/15/250/250.jpg?hmac=yJpjFbfNKlLjRQiWJ6gArBUeGhlsQodMza4QcT1mIPQ',
              ),
            ),
          ),
        ),
      ],
    ),
  );
}