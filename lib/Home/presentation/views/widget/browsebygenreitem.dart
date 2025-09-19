import 'package:flutter/material.dart';

class Browsebygenreitem extends StatelessWidget {
  const Browsebygenreitem({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });
  final IconData icon;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color, Color.lerp(color, Colors.black, 0.2)!],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 36, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
