import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/application/bloc/search_bloc.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/presentation/search/title.dart';
import '../../core/contants.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/nVRyd8hlg0ZLxBn9RaI7mUMQLnz.jpg";

class SearchIdlewidget extends StatelessWidget {
  const SearchIdlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(
          title: 'Top Searches',
        ),
        cHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while getting data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final movie = state.idleList[index];
                    return TopsearchTopItem(
                        imageUrl:'$imageappentUrl${ movie.posterpath}' ,
                        title: movie.title ?? 'Title not provided');
                  },
                  separatorBuilder: (ctx, index) => cHeight20,
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopsearchTopItem extends StatelessWidget {
  const TopsearchTopItem(
      {super.key, required this.imageUrl, required this.title});

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 65,
          width: screenwidth * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        cWidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: cwhite),
        )),
        const CircleAvatar(
          radius: 25,
          backgroundColor: cwhite,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: cblackcolor,
            child: Icon(
              CupertinoIcons.play_fill,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
