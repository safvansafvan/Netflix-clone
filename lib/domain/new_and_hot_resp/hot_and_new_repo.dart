import 'package:dartz/dartz.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:netflix_npp/domain/new_and_hot_resp/model/new_and_hot_resp.dart';
abstract class IHotAndNewRepo{
  Future<Either<MainFailures,NewAndHotResp>>getHotAndNewMovieData();
  Future<Either<MainFailures,NewAndHotResp>>getHotAndNewTvData();
}