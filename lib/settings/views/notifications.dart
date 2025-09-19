import 'package:flutter/material.dart';
import 'package:movie/settings/widgets/custum_content.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("Notifications", style: TextStyle(
          color: Colors.yellow,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        CustomContent(
          contentName: "Push Notifications",
          subtitle: "Receive push notifications",
          showSwitch: true,
          onSwitchChanged: (value) {
            
          },
          switchValue: true,
          ),
          CustomContent(
          contentName: "Email Updates",
          subtitle: "Get Updates via email",
          showSwitch: true,
          
          onSwitchChanged: (value) {
            
          },
          switchValue: false,
          ),
          CustomContent(
          contentName: "New Movies",
          subtitle: "Notify about new releases",
          showSwitch: true,
          onSwitchChanged: (value) {
            
          },
          switchValue: true,
          ),
          CustomContent(
          contentName: "Recommendation",
          subtitle: "Personalized movie suggestions",
          showSwitch: true,
          onSwitchChanged: (value) {
            
          },
          switchValue: true,
          ),
      ],
    );
  }
}