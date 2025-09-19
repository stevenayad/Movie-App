import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/reviewlist.dart';

class Reviewsview extends StatelessWidget {
  const Reviewsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Center(
                child: Icon(Icons.arrow_back, size: 24, color: Colors.white),
              ),
            ),
            Text(
              'My Reviews',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Icon(Icons.add, size: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Reviewlist(),
    );
  }
}

