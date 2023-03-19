import 'package:flutter/material.dart';
import 'package:netflix_npp/presentation/fast_laugh/widget/video_list_item.dart';

class FastLaugScreen extends StatelessWidget {
  const FastLaugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(10, (index) => VideoListItem(index: index)),
    )));
  }
}
