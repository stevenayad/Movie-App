import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/favouriteitemlist.dart';

class Favouritelist extends StatelessWidget {
  const Favouritelist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Favouriteitemlist();
      },
    );
  }
}
