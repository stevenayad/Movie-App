import 'package:flutter/material.dart';

class WatchingDetails extends StatelessWidget {
  final String number;
  final String desc;
  final Color color;
  const WatchingDetails({super.key, required this.number, required this.desc, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(number,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: color,
          
        ),),
        Text(desc,style: TextStyle(
          color: Colors.grey.shade300,
          fontSize: 14
        ),)
      ],
    );
  }
}