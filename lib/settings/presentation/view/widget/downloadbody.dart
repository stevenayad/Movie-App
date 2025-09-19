import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/buildMovielist.dart';
import 'package:movie/settings/presentation/view/widget/buildstorageinfo.dart';

class Downloadbody extends StatelessWidget {
  const Downloadbody({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> downloadData = {
      "storage": {"used": 6.3, "total": 32, "unit": "GB"},
      "movies": [
        {
          "title": "The Dark Knight",
          "quality": "HD 1080p",
          "size": 2.4,
          "status": "downloaded",
          "date": "2 days ago",
        },
        {
          "title": "Inception",
          "quality": "HD 720p",
          "size": 1.8,
          "status": "downloading",
          "progress": 75,
        },
        {
          "title": "Interstellar",
          "quality": "HD 1080p",
          "size": 3.1,
          "status": "paused",
        },
      ],
    };
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Buildstorageinfo(downloaddata: downloadData),
          Buildmovielist(Downloaddata: downloadData),
        ],
      ),
    );
  }
}
