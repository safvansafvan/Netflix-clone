import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/new_and_hot/widget/coming_soon_widget.dart';
import 'package:intl/intl.dart';
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
        body: const TabBarView(
          children: [
            CommingSoonList(
              key: Key('commig_soon'),
            ),
            EveryoneIsWatchingList(
              key: Key('every_is'),
            )
          ],
        ),
      ),
    );
  }
}

class CommingSoonList extends StatelessWidget {
  const CommingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInCommingSoon());
    });
    return RefreshIndicator(
      onRefresh: ()async {
        BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInCommingSoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
                child: Text('Error while loading comming soon list'));
          } else if (state.commingSoonList.isEmpty) {
            return const Center(child: Text('comming soon list is empty'));
          } else {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              itemCount: state.commingSoonList.length,
              itemBuilder: (context, index) {
                final movie = state.commingSoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
    
                String mont = '';
                String dat = '';
                try {
                  final _date = DateTime.tryParse(movie.releaseDate!);
                  final formatedate = DateFormat.yMMMMd('en_US').format(_date!);
                  mont =
                      formatedate.split(' ').first.substring(0, 3).toUpperCase();
                  dat = movie.releaseDate!.split('-')[1];
                } catch (_) {
                  mont = '';
                  dat = '';
                }
    
                return ComingSoonWidget(
                    id: movie.id.toString(),
                    month: mont,
                    day: dat,
                    posterpath: '$imageappentUrl${movie.posterPath}',
                    moviename: movie.originalTitle ?? 'No title',
                    description: movie.overview ?? 'No Discription');
              },
            );
          }
        },
      ),
    );
  }
}

class EveryoneIsWatchingList extends StatelessWidget {
  const EveryoneIsWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInEveryoneIsWatching());
      },
    );
    return RefreshIndicator(
      onRefresh: ()async {
         BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInEveryoneIsWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
                child: Text('Error while loading comming soon list'));
          } else if (state.everyOneIsWatchingList.isEmpty) {
            return const Center(child: Text('comming soon list is empty'));
          } else {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              itemCount: state.everyOneIsWatchingList.length,
              itemBuilder: (context, index) {
                final movie = state.everyOneIsWatchingList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
    
                final tv = state.everyOneIsWatchingList[index];
                return EveryoneWatchigWidget(
                    posterpath: '$imageappentUrl${tv.posterPath}',
                    moviename: tv.originalName ?? 'No Name Provided',
                    description: tv.overview ?? 'NO Description');
              },
            );
          }
        },
      ),
    );
  }
}
