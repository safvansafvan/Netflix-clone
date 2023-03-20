// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_npp/application/bloc/fast_laugh_bloc.dart' as _i9;
import 'package:netflix_npp/application/download/dowload_bloc.dart' as _i8;
import 'package:netflix_npp/application/search/search_bloc.dart' as _i7;
import 'package:netflix_npp/domain/download/i_download_repo.dart' as _i3;
import 'package:netflix_npp/domain/Search/i_search_repo.dart' as _i5;
import 'package:netflix_npp/infrastructor/downloads/download_repository.dart'
    as _i4;
import 'package:netflix_npp/infrastructor/search/search_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars

  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init(_i1.GetIt get,
    {
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      get,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadRepo>(() => _i4.Downloadrepository());
    gh.lazySingleton<_i5.ISearchRepo>(() => _i6.SearchRepository());
    gh.factory<_i7.SearchBloc>(() => _i7.SearchBloc(
          gh<_i3.IDownloadRepo>(),
          gh<_i5.ISearchRepo>(),
        ));
    gh.factory<_i8.DownloadsBloc>(
        () => _i8.DownloadsBloc(gh<_i3.IDownloadRepo>()));
    gh.factory<_i9.FastLaughBloc>(
        () => _i9.FastLaughBloc(gh<_i3.IDownloadRepo>()));
    return get;
  }

