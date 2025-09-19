import 'package:flutter/material.dart';

class NotificationSelection extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const NotificationSelection({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[800]!, width: 1),
      ),
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTab("All (6)", 0),
          _buildTab("Unread (2)", 1),
          _buildTab("Read (4)", 2),
        ],
      ),
    );
  }

  Widget _buildTab(String text, int index) {
    return GestureDetector(
      onTap: () => onChanged(index),
      child: Container(
        decoration: BoxDecoration(
          color: selectedIndex == index ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: selectedIndex == index ? FontWeight.w600 : FontWeight.w500,
            color: selectedIndex == index ? Colors.white : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
