import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie/settings/presentation/view/widget/buildmovieitem.dart';
import 'package:movie/settings/presentation/view/widget/downloadbody.dart';

class Buildmovielist extends StatelessWidget {
  const Buildmovielist({super.key, required this.Downloaddata});
  final Map<String, dynamic> Downloaddata;
  @override
  Widget build(BuildContext context) {
    List movies = Downloaddata['movies'];
    return Expanded(
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Buildmovieitem(movieinfo: movie);
        },
      ),
    );
  }
}
