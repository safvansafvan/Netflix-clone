import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';

import '../../domain/new_and_hot_resp/hot_and_new_repo.dart';
import '../../domain/new_and_hot_resp/model/new_and_hot_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHotAndNewRepo _homerepo;
  HomeBloc(this._homerepo) : super(HomeState.initial()) {
    // on event get homescreen data
    on<GetHomeScreenData>((event, emit) async {
      //send loading UI
      emit(state.copyWith(isLoading: true, hasError: false));

      //get data
      final _movieresul = await _homerepo.getHotAndNewMovieData();
      final _tvresul = await _homerepo.getHotAndNewTvData();

      //transform data
      final state1 = _movieresul.fold((MainFailures failures) {
        return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingMovieList: [],
            tenseDramaMovieList: [],
            southIndianMovieList: [],
            trendingTvList: [],
            isLoading: false,
            hasError: true);
      }, (NewAndHotResp resp) {
        final pastyear = resp.results;
        final trendign = resp.results;
        final dramas = resp.results;
        final southindian = resp.results;
        pastyear.shuffle();
        trendign.shuffle();
        dramas.shuffle();
        southindian.shuffle();
        return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: pastyear,
            trendingMovieList: trendign,
            tenseDramaMovieList: dramas,
            southIndianMovieList: southindian,
            trendingTvList: state.trendingTvList,
            isLoading: false,
            hasError: false);
      });
      emit(state1);

      final state2 = _tvresul.fold((MainFailures failures) {
        return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingMovieList: [],
            tenseDramaMovieList: [],
            southIndianMovieList: [],
            trendingTvList: [],
            isLoading: false,
            hasError: true);
      }, (NewAndHotResp resp) {
        final top10List = resp.results;

        return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: state.pastYearMovieList,
            trendingMovieList: state.trendingMovieList,
            tenseDramaMovieList: state.tenseDramaMovieList,
            southIndianMovieList: state.southIndianMovieList,
            trendingTvList: top10List,
            isLoading: false,
            hasError: false);
      });

      //send to UI

      emit(state2);
    });
  }
}
