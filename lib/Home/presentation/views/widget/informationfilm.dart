import 'package:flutter/material.dart';

class Informationfilm extends StatelessWidget {
  const Informationfilm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The Dark Knight',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Action . Crime',
            style: TextStyle(fontSize: 18, color: Colors.grey[400]),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 16),
              Text(
                '9',
                style: TextStyle(fontSize: 18, color: Colors.grey[400]),
              ),
              const SizedBox(width: 8),
              Icon(Icons.lock_clock, color: Colors.yellow[700], size: 16),
              const SizedBox(width: 2),
              Text(
                '2h 32m',
                style: TextStyle(fontSize: 18, color: Colors.grey[400]),
              ),
              const SizedBox(width: 8),
              Icon(Icons.calendar_month, color: Colors.yellow[700], size: 16),
              const SizedBox(width: 2),
              Text(
                '2008',
                style: TextStyle(fontSize: 18, color: Colors.grey[400]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
