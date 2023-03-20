
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import '../../domain/new_and_hot_resp/hot_and_new_repo.dart';
import '../../domain/new_and_hot_resp/model/new_and_hot_resp.dart';
part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final IHotAndNewRepo _iHotAndNewRepo;
  HotAndNewBloc(this._iHotAndNewRepo) : super(HotAndNewState.initial()) {
    //send loading to ui
    on<LoadDataInCommingSoon>((event, emit) async {
      emit(const HotAndNewState(
          commingSoonList: [],
          everyOneIsWatchingList: [],
          isLoading: true,
          isError: false));

      // get data from remote
      final _result = await _iHotAndNewRepo.getHotAndNewMovieData();

      //data to state
     final newstate= _result.fold((MainFailures failures) {
        return const HotAndNewState(
            commingSoonList: [],
            everyOneIsWatchingList: [],
            isLoading: false,
            isError: true);
      }, (NewAndHotResp resp) {
        return HotAndNewState(
            commingSoonList: resp.results,
            everyOneIsWatchingList: state.everyOneIsWatchingList,
            isLoading: false,
            isError: false);
      },
      );

      emit(newstate);
    },
    );

//get hot and new tv data

    on<LoadDataInEveryoneIsWatching>((event, emit) {});
  }
}
