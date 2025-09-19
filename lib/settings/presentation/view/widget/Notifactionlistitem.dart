import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Notifactionlistitem extends StatelessWidget {
  const Notifactionlistitem({super.key, required this.notications});
  final Map<String, dynamic> notications;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1C20),
        borderRadius: BorderRadius.circular(12),
        border: Border(
          left: BorderSide(
            color: notications['isRead'] == false
                ? Colors.red
                : Colors.transparent,
            width: 3,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _getNotificationColor(notications['type']),
            ),
            child: Icon(
              _getNotificationIcon(notications['type']),
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        notications['title'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.close, color: Colors.white),
                      iconSize: 18,
                    ),
                  ],
                ),
                Text(
                  notications['message'],
                  style: TextStyle(fontSize: 13, color: Colors.grey[400]),
                ),
                const SizedBox(height: 4),
                Text(
                  notications['time'],
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 150, 150, 150),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

IconData _getNotificationIcon(String type) {
  switch (type) {
    case "new_movie":
      return Icons.movie_creation;
    case "recommendation":
      return Icons.thumb_up;
    case "reminder":
      return Icons.notifications;
    case "download":
      return Icons.download;
    case "system":
      return Icons.system_update;
    default:
      return Icons.notifications;
  }
}

Color _getNotificationColor(String type) {
  switch (type) {
    case "new_movie":
      return Colors.blue;
    case "recommendation":
      return Colors.purple;
    case "reminder":
      return Colors.orange;
    case "download":
      return Colors.green;
    case "system":
      return Colors.red;
    default:
      return Colors.grey;
  }
}
