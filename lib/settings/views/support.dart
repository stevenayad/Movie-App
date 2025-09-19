import 'package:flutter/material.dart';
import 'package:movie/settings/widgets/custum_content.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("Support", style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        CustomContent(
          contentName: "Help Center",
          subtitle: "Get help and support",
          imagePath: "assets/icons/help.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          CustomContent(
          contentName: "Send Feedback",
          subtitle: "Share your thoughts",
          imagePath: "assets/icons/feedback.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          
          CustomContent(
          contentName: "Rate App",
          subtitle: "Rate us on app store",
          imagePath: "assets/icons/star.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          CustomContent(
          contentName: "Terms & Privacy",
          subtitle: "Legal information",
          imagePath: "assets/icons/document.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
      ],
    );
  }
}