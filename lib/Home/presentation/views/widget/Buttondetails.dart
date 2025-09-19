import 'package:flutter/material.dart';

class Buttondetails extends StatelessWidget {
  const Buttondetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_arrow, size: 20),
              label: Text('Watch Now'),
              style: ElevatedButton.styleFrom(
                
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
          ),

          SizedBox(width: 16),

          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.download, size: 20),
              label: Text('Download'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
