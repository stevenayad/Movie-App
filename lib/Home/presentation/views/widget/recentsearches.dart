import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Recentsearches extends StatelessWidget {
  const Recentsearches({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(Icons.lock_clock_sharp, size: 18),
        title: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
