import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/Search/i_search_repo.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:netflix_npp/domain/Search/model/search_resp/search_resp.dart';

import '../../domain/download/core/api_end_point.dart';
@LazySingleton(as: ISearchRepo)
class SearchRepository implements ISearchRepo { 
  @override
  Future<Either<MainFailures, SearchResp>> searchMovies({required String movieQuery})async {
    try {
      final Response respons =
          await Dio(BaseOptions()).get(ApiEndPoint.search,queryParameters:{
            'query':movieQuery
          },);
      if (respons.statusCode == 200 || respons.statusCode == 201) {
       final result=  SearchResp.fromJson(respons.data);
        return right(result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }

}