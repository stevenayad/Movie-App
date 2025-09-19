import 'package:flutter/material.dart';

class Imagedatials extends StatelessWidget {
  const Imagedatials({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight / 2.5, // 1/4 from screen height
      width: double.infinity,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: Image.network(
          'https://image.tmdb.org/t/p/w500/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
