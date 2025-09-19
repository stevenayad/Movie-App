import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String imagePath; 
  final VoidCallback onPressed;
  final Color color;
  final Color ?textandiconcolor;
  double width;

  CustomButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed, 
    required this.color,
    this.width=double.infinity,
    this.textandiconcolor=Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, 
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
              color: textandiconcolor 
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style:  TextStyle(color: textandiconcolor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
