import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black.withOpacity(0.4),
                    child: IconButton(
                    
                        onPressed: () {}, icon: const Icon(Icons.volume_mute))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:const [

                     Padding(
                      padding: EdgeInsets.symmetric( vertical: 8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage("https://www.themoviedb.org/t/p/w250_and_h141_face/nVRyd8hlg0ZLxBn9RaI7mUMQLnz.jpg"),
                      ),
                    ),
                    VideoActionWidget(
                        icons: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionWidget(icons: Icons.add, title: 'My List'),
                    VideoActionWidget(icons: Icons.share, title: 'Share'),
                    VideoActionWidget(icons: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget(
      {super.key, required this.icons, required this.title});

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
      child: Column(
        children: [Icon(icons,color: cwhite,), Text(title,style:const TextStyle(fontSize: 16,color: cwhite),)],
      ),
    );
  } 
}
