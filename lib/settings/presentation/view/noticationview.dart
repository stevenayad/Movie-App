import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/Noticationseletion.dart';
import 'package:movie/settings/presentation/view/widget/Notifactionlistview.dart';

class Noticationview extends StatefulWidget {
  const Noticationview({super.key});

  @override
  State<Noticationview> createState() => _NoticationviewState();
}

class _NoticationviewState extends State<Noticationview> {
  int selectedIndex = 0;

  void updateSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            const Text(
              'Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            const Text(
              'Mark All',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          NotificationSelection(
            selectedIndex: selectedIndex,
            onChanged: updateSelection,
          ),
          Notifactionlistview(selectedIndex: selectedIndex),
        ],
      ),
    );
  }
}
