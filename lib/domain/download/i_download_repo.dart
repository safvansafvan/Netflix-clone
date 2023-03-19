import 'package:dartz/dartz.dart';
import 'package:netflix_npp/domain/download/core/failures/main_failure.dart';
import 'package:netflix_npp/domain/download/models/downloads.dart';

abstract class IDownloadRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages();
}
