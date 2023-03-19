import 'package:dartz/dartz.dart';
import 'package:netflix_npp/domain/Search/model/search_resp/search_resp.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';

abstract class ISearchRepo{
  Future<Either<MainFailures,SearchResp>>searchMovies({
    required String movieQuery
  });

}