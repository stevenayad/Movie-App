import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/browsebygenreitem.dart';

class Browsebygenre extends StatelessWidget {
  const Browsebygenre({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> genres = [
      {'title': 'Action', 'icon': Icons.flash_on, 'color': Colors.red},
      {
        'title': 'Comedy',
        'icon': Icons.emoji_emotions,
        'color': Colors.amber,
        'movies': 287,
      },
      {'title': 'Drama', 'icon': Icons.masks, 'color': Colors.indigo},
      {'title': 'Horror', 'icon': Icons.bloodtype, 'color': Colors.deepPurple},
    ];

    return GridView.builder(
      itemBuilder: (context, index) {
        return Browsebygenreitem(
          icon: genres[index]['icon'],
          title: genres[index]['title'],
          color: genres[index]['color'],
        );
      },
      itemCount: genres.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 120,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
    );
  }
}
