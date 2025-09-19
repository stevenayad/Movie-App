
import 'package:flutter/material.dart';

class Terdingfilmsitem extends StatelessWidget {
  const Terdingfilmsitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.black26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, //rate of width
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                scale: 1,
                'https://image.tmdb.org/t/p/w500/ekZobS8isE6mA53RAiGDG93hBxL.jpg',

                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oppenheimer',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Action',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
