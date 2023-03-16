import 'package:flutter/material.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/home/widget/number_card.dart';
import 'package:netflix_npp/presentation/widgets/main_title.dart';

class NumberTileCard extends StatelessWidget {
  const NumberTileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cHeight,
        const MianTitle(title: 'Top 10 Tv Show In India Today'),
        cHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
                List.generate(20, (index) =>  NumberCard(index: index,)),
          ),
        )
      ],
    );
  }
}