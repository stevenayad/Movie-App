import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/browsebygenre.dart';
import 'package:movie/Home/presentation/views/widget/commingsoonfilms.dart';
import 'package:movie/Home/presentation/views/widget/featuredmovies.dart';
import 'package:movie/Home/presentation/views/widget/terdingfilms.dart';

class Homepagebody extends StatelessWidget {
  const Homepagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeaturedMovies(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Trending Now',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
          ),
          Terdingfilms(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Browse by Genre',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Browsebygenre(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
          ),
          Commingsoonfilms(),
        ],
      ),
    );
  }
}
