import 'package:flutter/material.dart';
import 'package:movie/Profile/widgets/custom_content.dart';
import 'package:movie/settings/presentation/view/downloadview.dart';
import 'package:movie/settings/presentation/view/noticationview.dart';
import 'package:movie/settings/presentation/view/reviewsview.dart';
import 'package:movie/settings/setting_page.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Quick Acces", style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
        SizedBox(height: 10,),
        CustomContent(
          imagePath: "assets/icons/download.png", 
          contentName: "Downloads",
          number: "12",
          showTrailing: true,
          onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Downloadview(),));
          },
          ),
          CustomContent(
          imagePath: "assets/icons/clock.png", 
          contentName: "Watch History",
          number: "45",
          showTrailing: true,
          onTap:() {
          },
          ),
          CustomContent(
          imagePath: "assets/icons/star.png", 
          contentName: "My Reviews",
          number: "8",
          showTrailing: true,
          onTap:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Reviewsview(),));
          },
          ),
          CustomContent(
          imagePath: "assets/icons/bell.png", 
          contentName: "Notification",
          showTrailing: true,
          onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Noticationview(),));
          },
          ),
          CustomContent(
          imagePath: "assets/icons/setting.png", 
          contentName: "Settings",
          showTrailing: true,
          onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage(),));
          },
          ),
          CustomContent(
          imagePath: "assets/icons/headphones.png", 
          contentName: "Help & Support",
          showTrailing: true,
          onTap:() {
          },
          ),
      ],
    );
  }
}