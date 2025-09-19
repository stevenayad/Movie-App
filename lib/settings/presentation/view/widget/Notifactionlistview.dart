import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/Notifactionlistitem.dart';

class Notifactionlistview extends StatelessWidget {
  final int selectedIndex; // 0 = All, 1 = Unread, 2 = Read

  const Notifactionlistview({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> notifications = [
      {
        "id": 1,
        "title": "New Movie Added",
        "message": "Dune: Part Two is now available to watch",
        "time": "2 hours ago",
        "isRead": false,
        "type": "new_movie",
      },
      {
        "id": 2,
        "title": "Recommended for You",
        "message": "Based on your viewing history, you might like The Batman",
        "time": "5 hours ago",
        "isRead": false,
        "type": "recommendation",
      },
      {
        "id": 3,
        "title": "Watch Reminder",
        "message": "Don't forget to finish watching Oppenheimer",
        "time": "1 day ago",
        "isRead": true,
        "type": "reminder",
      },
      {
        "id": 4,
        "title": "Download Complete",
        "message": "The Dark Knight has been downloaded successfully",
        "time": "2 days ago",
        "isRead": true,
        "type": "download",
      },
      {
        "id": 5,
        "title": "System Update",
        "message": "New app features are available. Update now!",
        "time": "3 days ago",
        "isRead": true,
        "type": "system",
      },
    ];

   
    List<Map<String, dynamic>> filteredNotifications;
    if (selectedIndex == 1) {
      filteredNotifications =
          notifications.where((n) => n['isRead'] == false).toList();
    } else if (selectedIndex == 2) {
      filteredNotifications =
          notifications.where((n) => n['isRead'] == true).toList();
    } else {
      filteredNotifications = notifications;
    }

    return Expanded(
      child: ListView.builder(
        itemCount: filteredNotifications.length,
        itemBuilder: (context, index) {
          final notification = filteredNotifications[index];
          return Notifactionlistitem(notications: notification);
        },
      ),
    );
  }
}
