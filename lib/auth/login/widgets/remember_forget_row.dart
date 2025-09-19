import 'package:flutter/material.dart';

class RememberForgetRow extends StatelessWidget {
  final bool rememberMe;                 // checkbox state comes from parent
  final ValueChanged<bool?>? onRemember; // callback when toggled
  final VoidCallback? onForgetPassword;  // callback for forget password tap

  const RememberForgetRow({
    Key? key,
    required this.rememberMe,
    this.onRemember,
    this.onForgetPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: onRemember, 
              ),
              Text(
                'Remember me',
                style: TextStyle(color: Colors.grey.shade300), 
              ),
            ],
          ),
          GestureDetector(
            onTap: onForgetPassword,
            child: Text(
              'Forget password?',
              style: TextStyle(
                color: Colors.red,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
