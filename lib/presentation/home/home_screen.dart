import 'package:flutter/material.dart';
import 'package:netflix_npp/presentation/home/widget/number_tile_card.dart';
import 'package:netflix_npp/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: const [
                  MainTitleCard(
                    title: 'Released In The Past Year',
                  ),
                  MainTitleCard(
                    title: 'Trending Now',
                  ),
                  NumberTileCard(),
                  MainTitleCard(
                    title: 'Tense Dramas ',
                  ),
                  MainTitleCard(
                    title: 'South Indian Cinema',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
