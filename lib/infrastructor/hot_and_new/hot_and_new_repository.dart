
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_npp/domain/new_and_hot_resp/model/new_and_hot_resp.dart';
import '../../domain/download/core/api_end_point.dart';
import '../../domain/new_and_hot_resp/hot_and_new_repo.dart';


@LazySingleton(as: IHotAndNewRepo)
class HotAndNewRepository implements IHotAndNewRepo{
  @override
  Future<Either<MainFailures, NewAndHotResp>> getHotAndNewMovieData() async {
   try {
      final Response respons = await Dio(BaseOptions()).get(
        ApiEndPoint.hotAndNewMovie,
       
      );
      if (respons.statusCode == 200 || respons.statusCode == 201) {
        final result = NewAndHotResp.fromJson(respons.data);
        return right(result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, NewAndHotResp>> getHotAndNewTvData()async {
   try {
      final Response respons = await Dio(BaseOptions()).get(
        ApiEndPoint.hotAndNewTv,
       
      );
      if (respons.statusCode == 200 || respons.statusCode == 201) {
        final result = NewAndHotResp.fromJson(respons.data);
        return right(result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  
  } 
}