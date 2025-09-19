import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/Home/presentation/views/widget/searchviewbody.dart';
import 'package:movie/Home/presentation/views/widget/textformfeild.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: CustomTextfelid(
                label: 'Search Movies,geners,actors....',
                prefixicon: Icons.search,
              ),
            ),
          ],
        ),
      ),
      body: searchviewbody(),
    );
  }
}
