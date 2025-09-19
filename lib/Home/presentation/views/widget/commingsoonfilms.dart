import 'package:flutter/material.dart';

class Commingsoonfilms extends StatelessWidget {
  const Commingsoonfilms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) => const Commingsoonfilmsitem()),
    );
  }
}

class Commingsoonfilmsitem extends StatelessWidget {
  const Commingsoonfilmsitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            child: AspectRatio(
              aspectRatio: 9 / 12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Deadpool 3',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 4),
              Text(
                'Coming 2024',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),

          const Spacer(),

          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.white),
              iconSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
