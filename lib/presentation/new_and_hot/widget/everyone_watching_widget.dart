import 'package:flutter/material.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/widgets/video_widget.dart';

import '../../home/widget/custom_btton_widget.dart';

class EveryoneWatchigWidget extends StatelessWidget {
  const EveryoneWatchigWidget({
    super.key,
    required this.posterpath,
    required this.moviename,
    required this.description,
  });

  final String posterpath;
  final String moviename;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cHeight,
           Text(
            moviename,
            style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          cHeight,
           Text(
            description,
            style:const TextStyle(color: Colors.grey),
          ),
          cHeight50,
           VideoWidget(url: posterpath),
          cHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomButtonWidget(
                icon: Icons.share,
                title: "Share",
                iconssize: 25,
                textsize: 16,
              ),
              cWidth,
              CustomButtonWidget(
                icon: Icons.add,
                title: "MyList",
                iconssize: 25,
                textsize: 16,
              ),
              cWidth,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                title: "Play",
                iconssize: 25,
                textsize: 16,
              ),
              cWidth
            ],
          )
        ],
      ),
    );
  }
}
