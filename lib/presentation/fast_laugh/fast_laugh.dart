import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/presentation/fast_laugh/widget/video_list_item.dart';

import '../../application/bloc/fast_laugh_bloc.dart';

class FastLaugScreen extends StatelessWidget {
  const FastLaugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
      },
    );
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isloading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error while getting data'),
              );
            } else if (state.videolist.isEmpty) {
              return const Center(
                child: Text('Video list is empty'),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    state.videolist.length,
                    (index) => VideoListInheritedWidget(
                          key: Key(index.toString()),
                          widget: VideoListItem(index: index),
                          moviedata: state.videolist[index],
                        )),
              );
            }
          },
        ),
      ),
    );
  }
}
