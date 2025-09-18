import 'package:flutter/material.dart';

class DecoratedIconButton extends StatelessWidget {
  final Widget icon;         
  final VoidCallback onTap;

  const DecoratedIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(6),
          child: icon, 
        ),
      ),
    );
  }
}
