import 'package:flutter/material.dart';

class CustomBottomWidget extends StatelessWidget {
  final String message;       // e.g. "Already have account?"
  final String actionText;    // e.g. "Sign up"
  final VoidCallback onActionTap;

  const CustomBottomWidget({
    Key? key,
    required this.message,
    required this.actionText,
    required this.onActionTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style:  TextStyle(
              fontSize: 16,
              color:  Colors.grey.shade300,
            ),
          ),
          const SizedBox(width: 2),
          GestureDetector(
            onTap: onActionTap,
            child: Text(
              actionText,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
