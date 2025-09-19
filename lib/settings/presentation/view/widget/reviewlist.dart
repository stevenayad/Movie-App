import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/reviewlistitem.dart';

class Reviewlist extends StatelessWidget {
  const Reviewlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      itemBuilder: (context, index) {
        return ReviewListItem();
      },
    );
  }
}
