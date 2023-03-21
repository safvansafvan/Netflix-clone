import 'package:flutter/cupertino.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/widgets/main_card.dart';
import 'package:netflix_npp/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.title, required this.posterList});

  final String title;
  final List<String>posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cHeight,
        MianTitle(title: title),
        cHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(posterList.length, (index) =>  MainCard(imageUrl: posterList[index],)),
          ),
        )
      ],
    );
  }
}
