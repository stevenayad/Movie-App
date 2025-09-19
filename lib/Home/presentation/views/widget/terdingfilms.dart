import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/detailsview.dart';
import 'package:movie/Home/presentation/views/widget/terdingfilmitem.dart';

class Terdingfilms extends StatelessWidget {
  const Terdingfilms({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        padding: EdgeInsets.only(left: 15),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Detailsview()),
            );
          },
          child: Terdingfilmsitem(),
        ),
      ),
    );
  }
}
