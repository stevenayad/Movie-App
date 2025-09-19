import 'package:flutter/material.dart';
import 'package:movie/settings/widgets/custum_content.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("Account", style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        CustomContent(
          contentName: "Edit Profile",
          subtitle: "Update Your personal information",
          imagePath: "assets/icons/userIcon.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          CustomContent(
          contentName: "Change Password",
          subtitle: "Update Your account password",
          imagePath: "assets/icons/padlock.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          
          CustomContent(
          contentName: "Email Preferences",
          subtitle: "Manage email notifications",
          imagePath: "assets/icons/mail.png",
          showArrow: true,
          onTap: () {
            
          },
          ),
          CustomContent(
          contentName: "Delete Account",
          titleColor: Colors.redAccent,
          subtitle: "Permanently delete your account",
          imagePath: "assets/icons/bin.png",
          iconColor: Colors.redAccent,
          leadingBgColor: Colors.red.withAlpha(30),
          showArrow: true,
          onTap: () {
            
          },
          ),
      ],
    );
  }
}