import 'package:flutter/material.dart';
import 'package:movie/Profile/views/memsince_favgenre.dart';
import 'package:movie/Profile/views/quick_access.dart';
import 'package:movie/Profile/views/recent_activity.dart';
import 'package:movie/Profile/views/signout_button.dart';
import 'package:movie/Profile/widgets/appbar/custom_AppBar.dart';
import 'package:movie/Profile/views/header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      appBar: CustomAppBar(
        title: "Profile",
        actionIcon: "assets/icons/edit-text.png"
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Header(),
              MemsinceFavgenre(),
              QuickAccess(),
              SizedBox(height: 20,),
              RecentActivity(),
              SizedBox(height: 20,),
              SignoutButton()
            ],
          ),
        ),
      ),
    );

  }
}