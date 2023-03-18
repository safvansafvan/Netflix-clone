import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/home/widget/backround_card.dart';
import 'package:netflix_npp/presentation/home/widget/number_tile_card.dart';
import 'package:netflix_npp/presentation/widgets/main_title_card.dart';

import '../../application/download/dowload_bloc.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(DownloadsEvent.getDownloadsImage());
    });
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
                ListView(
                  children: const [
                    BackgroundCardwidget(),
                    MainTitleCard(
                      title: 'Released In The Past Year',
                    ),
                    cHeight,
                    MainTitleCard(
                      title: 'Trending Now',
                    ),
                    cHeight,
                    NumberTileCard(),
                    cHeight,
                    MainTitleCard(
                      title: 'Tense Dramas ',
                    ),
                    cHeight,
                    MainTitleCard(
                      title: 'South Indian Cinema',
                    ),
                  ],
                ),
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYmUXk3woaOPxEsJ_XZ7mgOxblvjEb3ag_V5gdvfBKBwJFZKSq63zzQe30A030GbCmW1o&usqp=CAU',
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
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
