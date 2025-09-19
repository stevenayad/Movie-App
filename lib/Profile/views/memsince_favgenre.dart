import 'package:flutter/material.dart';

class MemsinceFavgenre extends StatelessWidget {
  const MemsinceFavgenre({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5 , bottom: 25),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),      
          borderRadius: BorderRadius.circular(12),  
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Member Since", style: TextStyle(
                  color: Colors.grey.shade300,
                ),),
                Text("January 2023", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            Column(
              children: [
                Text("Favorite Genre", style: TextStyle(
                  color: Colors.grey.shade300,
                ),),
                Text("Action", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}