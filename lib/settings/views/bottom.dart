import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset("assets/icons/meetup.png",width: 75,),
          SizedBox(height: 20,),
          Text("MovieApp", style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Text("Version 2.1.0", style: TextStyle(
            color: Colors.white70,
            fontSize: 20
          ),),
          SizedBox(height: 10,),
          Text("© 2024 MovieApp. All rights reserved.", style: TextStyle(
            color: Colors.white70,
            fontSize: 16
          ),),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}