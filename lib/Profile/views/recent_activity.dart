import 'package:flutter/material.dart';
import 'package:movie/Profile/widgets/custom_content.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Activity", style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          
          CustomContent(
            imagePath: "assets/icons/play.png", 
            contentName: "Watched Dune: Part Two",
            subtitle: "2 hours ago",
            onTap:() {
            },
            ),
            CustomContent(
            imagePath: "assets/icons/heart.png", 
            contentName: "Added Oppenheimer to favorites",
            subtitle: "1 day ago",
            onTap:() {
            },
            ),
            CustomContent(
            imagePath: "assets/icons/star.png", 
            contentName: "Rated The Batman 5 stars",
            subtitle: "3 day ago",
            onTap:() {
            },
            ),
        ],
      ),
    );
  }
}