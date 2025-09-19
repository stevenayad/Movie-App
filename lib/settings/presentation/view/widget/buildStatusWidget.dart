import 'package:flutter/material.dart';

Widget buildStatusWidget(Map<String, dynamic> movie) {
  switch (movie["status"]) {
    case "downloaded":
      return Text(
        "Downloaded ${movie["date"]}",
        style: const TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 101, 102, 101),
        ),
      );
    case "downloading":
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Downloading...    ${movie["progress"]}%",
            style: const TextStyle(fontSize: 14, color: Colors.blue),
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: movie["progress"] / 100,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
            minHeight: 4,
            borderRadius: BorderRadius.circular(2),
          ),
        ],
      );
    case "paused":
      return const Text(
        "Download paused",
        style: TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 215, 165, 89),
        ),
      );
    default:
      return const SizedBox();
  }
}
