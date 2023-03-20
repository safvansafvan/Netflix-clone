import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/search/title.dart';

import '../../application/search/search_bloc.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: 'Movie & Tv '),
        cHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.4,
                children: List.generate(
                  state.searchResultList.length,
                  (index) {
                    final movie = state.searchResultList[index];
                    return ManiCard(
                        imageUrls: '$imageappentUrl${movie.posterPath}');
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ManiCard extends StatelessWidget {
  const ManiCard({super.key, required this.imageUrls});
  final String imageUrls;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageUrls)),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
