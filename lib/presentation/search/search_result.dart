import 'package:flutter/material.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/search/search_idle.dart';
import 'package:netflix_npp/presentation/search/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: 'Movie & Tv '),
        cHeight,
        Expanded(child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          children: List.generate(21, (index) =>const ManiCard())
          ))
      ],
    );
  }
}
class ManiCard extends StatelessWidget {
  const ManiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageurl)),
          borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}