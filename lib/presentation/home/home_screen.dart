import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/application/home/home_bloc.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/home/widget/backround_card.dart';
import 'package:netflix_npp/presentation/home/widget/number_tile_card.dart';
import 'package:netflix_npp/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollnotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollnotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.hasError) {
                    return const Center(
                      child: Text(
                        'Error while getting data',
                        style: TextStyle(color: cwhite),
                      ),
                    );
                  }
                  //released passed year
                  final releasedPasedYear = state.pastYearMovieList.map((mov) {
                    return '$imageappentUrl${mov.posterPath}';
                  }).toList();

                  //released passed year
                  final trendingNow = state.trendingMovieList.map((mov) {
                    return '$imageappentUrl${mov.posterPath}';
                  }).toList();
                  trendingNow.shuffle();

                  //top 10
                  state.trendingTvList.map((mov) {
                    return '$imageappentUrl${mov.posterPath}';
                  }).toList();

                  // tense dramas
                  final tenseDramas = state.tenseDramaMovieList.map((mov) {
                    return '$imageappentUrl${mov.posterPath}';
                  }).toList();
                  tenseDramas.shuffle();

                  // south indian
                  final southIndian = state.southIndianMovieList.map((mov) {
                    return '$imageappentUrl${mov.posterPath}';
                  }).toList();
                  southIndian.shuffle();

                  return ListView(
                    children: [
                      const BackgroundCardwidget(),
                      MainTitleCard(
                        title: 'Released In The Past Year',
                        posterList: releasedPasedYear.sublist(0, 10),
                      ),
                      cHeight,
                      MainTitleCard(
                        title: 'Trending Now',
                        posterList: trendingNow.sublist(0, 10),
                      ),
                      cHeight,
                      const NumberTileCard(),
                      cHeight,
                      MainTitleCard(
                        title: 'Tense Dramas ',
                        posterList: tenseDramas.sublist(0, 10),
                      ),
                      cHeight,
                      MainTitleCard(
                        title: 'South Indian Cinema',
                        posterList: southIndian.sublist(0, 10),
                      ),
                    ],
                  );
                }),
                scrollnotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: double.infinity,
                        height: 85,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                                cWidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('TV Shows', style: hometitletext),
                                Text('Movies', style: hometitletext),
                                Text('Categories', style: hometitletext)
                              ],
                            ),
                          ],
                        ),
                      )
                    : cHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
