import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/widget/moviesction.dart';
import 'package:movie/Home/presentation/views/widget/sectiongener.dart';
import 'package:movie/Home/presentation/views/widget/textformfeild.dart';

class Moviepageview extends StatelessWidget {
  const Moviepageview({super.key});

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextfelid(label: 'Search Movies', prefixicon: Icons.search),
              const SizedBox(height: 12),
              Sectiongener(),
              const SizedBox(height: 12),
              MovieSection(),
            ],
          ),
        ),
      ),
    );
  }
}
