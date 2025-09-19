import 'package:flutter/material.dart';
import 'package:movie/Home/presentation/views/searchview.dart';
import 'package:movie/Home/presentation/views/widget/Homepagebody.dart';


class Homepageview extends StatelessWidget {
  const Homepageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good evening',
                  style: TextStyle(fontSize: 12, color: Colors.grey[20]),
                ),
                Text(
                  'John',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search, size: 24, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Searchview()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 24,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Homepagebody(),
    );
  }
}
