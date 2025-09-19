import 'package:flutter/material.dart';

class Buildstorageinfo extends StatelessWidget {
  const Buildstorageinfo({super.key, required this.downloaddata});
  final Map<String, dynamic> downloaddata;
  @override
  Widget build(BuildContext context) {
    final used = downloaddata["storage"]["used"];
    final total = downloaddata["storage"]["total"];
    final unit = downloaddata["storage"]["unit"];
    final percentage = used / total;
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF282A28),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Storage Used",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "$used $unit / $total $unit",
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: percentage,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
            backgroundColor: Colors.grey[300],
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }
}
