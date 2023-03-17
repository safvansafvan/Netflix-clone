import 'package:flutter/material.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/new_and_hot/widget/coming_soon_widget.dart';
import 'package:netflix_npp/presentation/new_and_hot/widget/everyone_watching_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: [
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
              cWidth,
            ],
            bottom: TabBar(
                isScrollable: true,
                labelColor: cblackcolor,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: cwhite,
                indicator: BoxDecoration(color: cwhite, borderRadius: radius30),
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: " 👀 Everyone's Watching",
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          children: [buildComingSoon(context), buildEveryonesWatching()],
        ),
      ),
    );
  }

  Widget buildComingSoon(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) =>const EveryoneWatchigWidget() );
    
  }
}

