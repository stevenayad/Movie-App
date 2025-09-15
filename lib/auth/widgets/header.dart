import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final String subtitle;
  Header({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Center(
                child: ImageIcon(AssetImage("assets/icons/film.png"),color: Colors.white,),
              ),
            ),
            SizedBox(height: 20,),
            Text(title , style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              ),),
              SizedBox(height: 12,),
              Text(subtitle , style: TextStyle(
                color: Colors.white38
              ),)
          ],
        ),
      ),
    );
  }
}