// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/domain/download/models/downloads.dart';
import 'package:video_player/video_player.dart';

import '../../../application/fastLaugh/fast_laugh_bloc.dart';
import 'package:share_plus/share_plus.dart';

class VideoListInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads moviedata;

  const VideoListInheritedWidget(
      {Key? key, required this.widget, required this.moviedata})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListInheritedWidget oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static VideoListInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    final posterpath =
        VideoListInheritedWidget.of(context)?.moviedata.posterpath;
    final videoUrl = videoUrls[index % videoUrls.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
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
                    onPressed: () {},
                    icon: const Icon(Icons.volume_mute),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CircleAvatar(
                          radius: 25,
                          backgroundImage: posterpath == null
                              ? null
                              : NetworkImage('$imageappentUrl$posterpath')),
                    ),
                    const VideoActionWidget(
                        icons: Icons.emoji_emotions, title: 'LOL'),
                    const VideoActionWidget(icons: Icons.add, title: 'My List'),
                    GestureDetector(
                      child: const VideoActionWidget(
                          icons: Icons.share, title: 'Share'),
                      onTap: () {
                        final moviename = VideoListInheritedWidget.of(context)
                            ?.moviedata
                            .posterpath;
                        if (moviename != null) {
                          Share.share(moviename);
                        }
                      },
                    ),
                    const VideoActionWidget(
                        icons: Icons.play_arrow, title: 'Play'),
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
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Icon(
            icons,
            color: cwhite,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: cwhite),
          )
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  const FastLaughVideoPlayer(
      {super.key, required this.videoUrl, required this.onStateChanged});

  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayer();
}

class _FastLaughVideoPlayer extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then(
      (value) {
        setState(() {});
        _videoPlayerController.play();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? VideoPlayer(_videoPlayerController)
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
