import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:netflix_npp/domain/i_download_repo.dart';

import '../../domain/download/models/downloads.dart';

part 'dowload_event.dart';
part 'dowload_state.dart';
part 'dowload_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {

  final IDownloadRepo _downloadRepo;

  DownloadsBloc(this._downloadRepo) : super(DownloadState.inital()) {
    on<_GetDownloadImage>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadsFailuresOrSuccessOption: none(),
          ),
        );
        final Either<MainFailures, List<Downloads>> downloadoption =
            await _downloadRepo.getDownloadsImages();
        emit(
          downloadoption.fold(
            (failure) => state.copyWith(
                isLoading: false,
                downloadsFailuresOrSuccessOption: some(left(failure))),
            (success) => state.copyWith(isLoading: false,
            downloads: success,
            downloadsFailuresOrSuccessOption: some(right(success))),
          ),
        );
      },
    );
  }
}
