import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/favouritelist.dart';

class Myfavouriteview extends StatelessWidget {
  const Myfavouriteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Movie',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: Center(
            child: Icon(Icons.arrow_back, size: 24, color: Colors.white),
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
            child: Center(child: Text('3')),
          ),
        ],
      ),
      body: Favouritelist(),
    );
  }
}
