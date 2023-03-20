import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/i_download_repo.dart';

import '../../domain/download/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';


final videoUrls=[
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",

];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadRepo _idownloadrepo,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit)async {
      //Sending loading to UI
     emit(
      FastLaughState(videolist: [], isloading: true, isError: false)
     );
      //get trendig movie
      
   final _result=await  _idownloadrepo.getDownloadsImages();
 final _state= _result.fold((l) {
    return const FastLaughState(videolist: [], isloading: false, isError: true);
  }, (resp) {
    return FastLaughState(videolist: resp, isloading: false, isError: false);
  });
      //send to ui
     emit(_state);
    });
  }
}
