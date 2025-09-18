import 'package:flutter/material.dart';
import 'package:movie/auth/widgets/custom_button.dart';

class SignoutButton extends StatelessWidget {
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(       // this widget from auth widget
      color: Colors.red.withOpacity(0.3),
      onPressed: () {
        
      },
      text: "Sign Out",
      imagePath: "assets/icons/logout.png",
      textandiconcolor: Colors.red,
    );
  }
}