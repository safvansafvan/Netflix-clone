
import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration:  BoxDecoration(
            image:const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/mqsPyyeDCBAghXyjbw4TfEYwljw.jpg',
              
              ),
              
            ),
            borderRadius: radius10
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_mute,color: cwhite,
            ),
          ),
        ),
      ],
    );
  }
}
