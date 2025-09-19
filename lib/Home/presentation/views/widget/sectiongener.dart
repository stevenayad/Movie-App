import 'package:flutter/material.dart';

class Sectiongener extends StatefulWidget {
  const Sectiongener({super.key});

  @override
  State<Sectiongener> createState() => _SectiongenerState();
}

class _SectiongenerState extends State<Sectiongener> {
  int? selectindex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> generes = [
      'All',
      'Action',
      'Comedy',
      'Drama',
      'Horror',
      'Romance',
      'Sci-Fi',
    ];

    return SizedBox(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: generes.length,
        itemBuilder: (context, index) {
          final isSelected = selectindex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectindex = index;
              });
            },
            child: Container(
              height: 2,
              margin: const EdgeInsets.symmetric(horizontal: 6),

              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? Colors.red : Colors.grey[800],
                borderRadius: BorderRadius.circular(20),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.4),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : [],
              ),
              child: Center(
                child: Text(
                  generes[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
