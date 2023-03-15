import 'package:flutter/material.dart';
import 'package:netflix_npp/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_npp/presentation/home/home_screen.dart';
import 'package:netflix_npp/presentation/main_pages/widgets/bottom_navigation.dart';
import 'package:netflix_npp/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix_npp/presentation/search/search_screen.dart';

import '../../downloads/widgets/dowload_screen.dart';

class ScreenMainPage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ScreenMainPage({super.key});

  final pages =const [
    ScreenHome(),
    NewAndHotScreen(),
    FastLaugScreen(),
    SearchScreen(),
    DownloadScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchagenotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar:const BottomNavWidget(),
    );
  }
}
