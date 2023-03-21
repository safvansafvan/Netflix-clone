import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:netflix_npp/domain/download/i_download_repo.dart';

import '../../domain/Search/i_search_repo.dart';
import '../../domain/Search/model/search_resp/search_resp.dart';
import '../../domain/download/models/downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _downloadsrepository;
  final ISearchRepo _searchRepository;

  SearchBloc(this._downloadsrepository, this._searchRepository)
      : super(SearchState.initial()) {
    on<Initializes>(
      (event, emit) async {
        if (state.idleList.isNotEmpty) {
          emit(
            SearchState(
                searchResultList: [],
                idleList: state.idleList,
                isloading: false,
                isError: false),
          );
          return;
        }
        emit(
          const SearchState(
              searchResultList: [],
              idleList: [],
              isloading: true,
              isError: false),
        );
        final result = await _downloadsrepository.getDownloadsImages();
        final _state = result.fold(
          (MainFailures f) {
            return const SearchState(
              searchResultList: [],
              idleList: [],
              isloading: false,
              isError: true,
            );
          },
          (List<Downloads> list) {
            return SearchState(
                searchResultList: [],
                idleList: list,
                isloading: false,
                isError: false);
          },
        );
        emit(_state);
      },
    );


//search

    on<SeachMovie>(
      (event, emit) async {
        emit(
          const SearchState(
              searchResultList: [],
              idleList: [],
              isloading: true,
              isError: false),
        );
        final result =
            await _searchRepository.searchMovies(movieQuery: event.movieQury);
        final _state = result.fold(
          (MainFailures f) {
            return const SearchState(
              searchResultList: [],
              idleList: [],
              isloading: false,
              isError: true,
            );
          },
          (SearchResp r) {
            return SearchState(
              searchResultList: r.results,
              idleList: [],
              isloading: false,
              isError: false,
            );
          },
        );
        //show to ui
        emit(_state);
      },
    );
  }
}
