part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initializes() = Initializes;
   const factory SearchEvent.seachMovie({
    required String movieQury,
   }) = SeachMovie;
}