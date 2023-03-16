import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/presentation/search/title.dart';
import '../../core/contants.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/nVRyd8hlg0ZLxBn9RaI7mUMQLnz.jpg";

class SearchIdlewidget extends StatelessWidget {
  const SearchIdlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  SearchTitleText(title: 'Top Searches',),
        cHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopsearchTopItem(),
              separatorBuilder: (ctx, index) => cHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopsearchTopItem extends StatelessWidget {
  const TopsearchTopItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 65,
          width: screenwidth * 0.35,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        cWidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: cwhite),
        )),
        const CircleAvatar(
          radius: 25,
          backgroundColor: cwhite,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: cblackcolor,
            child: Icon(
              CupertinoIcons.play_fill,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
