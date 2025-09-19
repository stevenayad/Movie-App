import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/Home/presentation/views/widget/popularsearches.dart';
import 'package:movie/Home/presentation/views/widget/recentsearches.dart';

class searchviewbody extends StatelessWidget {
  const searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Recent Searches',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 12),
          Recentsearches(title: 'The Dark Knight'),
          Recentsearches(title: 'The Dark Knight'),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Popular Searches',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 12),
          Popularsearches(),
        ],
      ),
    );
  }
}
