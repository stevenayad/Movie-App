import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/Buttondetails.dart';
import 'package:movie/Home/presentation/views/widget/castandcreviewdetails.dart';
import 'package:movie/Home/presentation/views/widget/descrptiondetils.dart';
import 'package:movie/Home/presentation/views/widget/imagedatials.dart';
import 'package:movie/Home/presentation/views/widget/informationfilm.dart';

class Detailsview extends StatelessWidget {
  const Detailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 24, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.share, size: 24, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 24,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Imagedatials(),
            Informationfilm(),
            Buttondetails(),
            Descrptiondetils(),
            Castandcreviewdetails(),
          ],
        ),
      ),
    );
  }
}
