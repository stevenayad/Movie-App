import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/browsebygenreitem.dart';

class Popularsearches extends StatelessWidget {
  const Popularsearches({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> genre = [
      {'title': 'Action', 'icon': Icons.flash_on, 'color': Colors.red},
      {'title': 'Comedy', 'icon': Icons.emoji_emotions, 'color': Colors.amber},
      {'title': 'Drama', 'icon': Icons.masks, 'color': Colors.indigo},
      {'title': 'Horror', 'icon': Icons.bloodtype, 'color': Colors.deepPurple},
      {'title': 'Sci-Fi', 'icon': Icons.rocket_launch, 'color': Colors.blue},
    ];

    return GridView.builder(
      itemBuilder: (context, index) {
        return Browsebygenreitem(
          icon: genre[index]['icon'],
          title: genre[index]['title'],
          color: genre[index]['color'],
        );
      },
      itemCount: genre.length,
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
