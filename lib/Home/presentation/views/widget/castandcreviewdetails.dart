import 'package:flutter/material.dart';

class Castandcreviewdetails extends StatelessWidget {
  const Castandcreviewdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Director',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                'Christopher Nolan',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Starring',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine, Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
