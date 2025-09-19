import 'package:flutter/material.dart';
import 'package:movie/auth/widgets/custom_AppBar.dart';
import 'package:movie/settings/views/account.dart';
import 'package:movie/settings/views/app_settings.dart';
import 'package:movie/settings/views/bottom.dart';
import 'package:movie/settings/views/notifications.dart';
import 'package:movie/settings/views/playback.dart';
import 'package:movie/settings/views/privacy.dart';
import 'package:movie/settings/views/storage.dart';
import 'package:movie/settings/views/support.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      appBar: CustomAppBar(title: "Settings"),  //from auth widgets
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 2700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Account(),
                Notifications(),
                Playback(),
                Privacy(),
                AppSettings(),
                Storage(),
                Support(),
                Bottom()
              ],
            ),
          ),
        ),
      ),
    );
  }
}