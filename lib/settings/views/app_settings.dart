import 'package:flutter/material.dart';
import 'package:movie/settings/widgets/custum_content.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("App Settings", style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        CustomContent(
          contentName: "Doanload Settings",
          subtitle: "Manage offline content",
          imagePath: "assets/icons/download.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          CustomContent(
          contentName: "Playback Settings",
          subtitle: "Video quality and preferences",
          imagePath: "assets/icons/play.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          
          CustomContent(
          contentName: "Language & Region",
          subtitle: "Change app Language",
          imagePath: "assets/icons/world.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          CustomContent(
          contentName: "Appearance",
          subtitle: "Theme and display options",
          imagePath: "assets/icons/color-palette.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
      ],
    );
  }
}