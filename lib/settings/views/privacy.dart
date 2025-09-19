import 'package:flutter/material.dart';
import 'package:movie/settings/widgets/custum_content.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("Privacy", style: TextStyle(
          color: Colors.green,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        CustomContent(
          contentName: "Public Profile",
          subtitle: "Make your profile visible to others",
          showSwitch: true,
          onSwitchChanged: (value) {
            
          },
          switchValue: true,
          ),
          CustomContent(
          contentName: "Show Watch History",
          subtitle: "Display your watch history publicly",
          showSwitch: true,
          
          onSwitchChanged: (value) {
            
          },
          switchValue: false,
          ),
          CustomContent(
          contentName: "Share Reviews",
          subtitle: "Allow other to see your reviews",
          showSwitch: true,
          onSwitchChanged: (value) {
            
          },
          switchValue: true,
          ),
          
      ],
    );
  }
}