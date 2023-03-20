import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/domain/core/debounce/debonce.dart';
import 'package:netflix_npp/presentation/search/search_idle.dart';
import 'package:netflix_npp/presentation/search/search_result.dart';

import '../../application/search/search_bloc.dart';



class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initializes());
    });
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(  
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  BlocProvider.of<SearchBloc>(context)
                      .add((SeachMovie(movieQury: value)));
                });
              },
            ),
            cHeight,
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return const SearchIdlewidget();
                } else {
                  return const SearchResultWidget();
                }
              },
            )),
          ],
        ),
      ),
    ));
  }
}
