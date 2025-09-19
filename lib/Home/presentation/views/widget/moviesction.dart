import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/moviesectionitem.dart';

class MovieSection extends StatelessWidget {
  const MovieSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4, // Reduced for example
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        mainAxisExtent: 280,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        return MovieSectionItem(
          title: index % 2 == 0 ? 'DeadPool' : 'Parasite',
          genre: index % 2 == 0 ? 'Action' : 'Drama',
          year: index % 2 == 0 ? '2019' : '2020',
          rating: index % 2 == 0 ? '4.6' : '8.6',
          duration: index % 2 == 0 ? '3h 1m' : '2h 12m',
          imageUrl: index % 2 == 0
              ? 'https://image.tmdb.org/t/p/w500/ekZobS8isE6mA53RAiGDG93hBxL.jpg'
              : 'https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg',
        );
      },
    );
  }
}
