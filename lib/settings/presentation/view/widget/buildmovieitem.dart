import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/buildStatusWidget.dart';

class Buildmovieitem extends StatelessWidget {
  const Buildmovieitem({super.key, required this.movieinfo});
  final Map<String, dynamic> movieinfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 12, bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF282A28),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieinfo["title"],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${movieinfo["quality"]} • ${movieinfo["size"]} GB",
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    buildStatusWidget(movieinfo),
                  ],
                ),
              ),
              if (movieinfo["status"] == "downloaded" ||
                  movieinfo["status"] == "paused" ||
                  movieinfo["status"] == "downloading")
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.grey),
                  onPressed: () async {
                    final selected = await showMenu(
                      context: context,
                      position: const RelativeRect.fromLTRB(100, 100, 0, 0),
                      items: [
                        if (movieinfo["status"] == "downloaded")
                          const PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        if (movieinfo["status"] == "paused")
                          const PopupMenuItem(
                            value: 'resume',
                            child: Text('resume'),
                          ),
                        if (movieinfo["status"] == "downloading")
                          const PopupMenuItem(
                            value: 'pause',
                            child: Text('pause'),
                          ),
                      ],
                    );
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
