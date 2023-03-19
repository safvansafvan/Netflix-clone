part of 'dowload_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFailures, List<Downloads>>>
        downloadsFailuresOrSuccessOption,
  }) = _DownloadState;

  factory DownloadState.inital() {
    return const DownloadState(
        isLoading: false,
        downloadsFailuresOrSuccessOption: None(),
        downloads: []);
  }
}
