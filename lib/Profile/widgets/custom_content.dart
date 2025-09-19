import 'package:flutter/material.dart';

class CustomContent extends StatelessWidget {
  final String imagePath;            
  final String contentName;          
  final String? subtitle;
  final String? number;              
  final bool showTrailing;           
  final VoidCallback? onTap;         

  const CustomContent({
    Key? key,
    required this.imagePath,
    required this.contentName,
    this.number,
    this.showTrailing = false,
    this.onTap, 
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),      
        borderRadius: BorderRadius.circular(12),  
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(8),
          child: ImageIcon(
            AssetImage(imagePath),
            color: Colors.white,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              contentName,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            if (number != null)
              Text(
                number!,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
          ],
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              )
            : null,
        trailing: showTrailing
            ? const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18)
            : null,
      ),
    );
  }
}
