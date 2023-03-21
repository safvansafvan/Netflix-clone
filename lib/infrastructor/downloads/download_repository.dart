import 'package:injectable/injectable.dart';
import 'package:netflix_npp/domain/download/core/api_end_point.dart';
import 'package:netflix_npp/domain/download/models/downloads.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_npp/domain/download/i_download_repo.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadRepo)
class Downloadrepository implements IDownloadRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response respons =
          await Dio(BaseOptions()).get(ApiEndPoint.downloads);
      if (respons.statusCode == 200 || respons.statusCode == 201) {
        final downloadlist = (respons.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
          }).toList();

        return right(downloadlist);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
