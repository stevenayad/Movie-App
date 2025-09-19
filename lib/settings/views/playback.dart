import 'package:flutter/material.dart';
import 'package:movie/settings/widgets/custum_content.dart';

class Playback extends StatelessWidget {
  const Playback({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("PlayBack", style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        CustomContent(
          contentName: "Auto play",
          subtitle: "Automatically play next episode",
          showSwitch: true,
          switchValue: true,
          onSwitchChanged: (value) {
            
          },
          ),
          CustomContent(
          contentName: "Download Quality",
          subtitle: "Defaul quality for downloads",
          showDropdown: true,
          dropdownItems: [
            DropdownMenuItem(value: '180', child: Text('180')),
            DropdownMenuItem(value: '240', child: Text('240')),
            DropdownMenuItem(value: '360', child: Text('360')),
            DropdownMenuItem(value: '720', child: Text('720')),
            DropdownMenuItem(value: '1080', child: Text('1080')),
          ],
          selectedDropdownValue: "1080",
          onDropdownChanged: (value) {
            
          },
          ),
          CustomContent(
          contentName: "Language",
          subtitle: "Audio labguage preference",
          showDropdown: true,
          dropdownItems: [
            DropdownMenuItem(value: 'English', child: Text('English')),
            DropdownMenuItem(value: 'Arabic', child: Text('Arabic')),
          ],
          selectedDropdownValue: "English",
          onDropdownChanged: (value) {
            
          },
          ),
          CustomContent(
          contentName: "Subtitles",
          subtitle: "Defaults subtitle setting",
          showDropdown: true,
          dropdownItems: [
            DropdownMenuItem(value: 'Auto', child: Text('Auto')),
            DropdownMenuItem(value: 'Off', child: Text('Off')),
          ],
          selectedDropdownValue: "Auto",
          onDropdownChanged: (value) {
            
          },
          )
      ],
    );
  }
}