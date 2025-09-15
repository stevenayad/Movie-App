import 'package:flutter/material.dart';
import 'package:movie/auth/widgets/custom_button.dart';

class AnotherSignin extends StatelessWidget {
  const AnotherSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
          text: 'Google',
          onPressed: () {
            
          },
          color:  Colors.blue.withOpacity(0.3),
          imagePath: "assets/icons/google.png",
          width: 150,
        ),
        CustomButton(
          text: 'Apple',
          onPressed: () {
            
          },
          color:  Colors.blue.withOpacity(0.3),
          imagePath: "assets/icons/apple-logo.png",
          width: 150,
        ),
      ],
    );
  }
}