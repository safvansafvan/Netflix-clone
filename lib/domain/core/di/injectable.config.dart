// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_npp/application/download/dowload_bloc.dart' as _i10;
import 'package:netflix_npp/application/fast_laugh/fast_laugh_bloc.dart'
    as _i11;
import 'package:netflix_npp/application/hot_and_new/hot_and_new_bloc.dart'
    as _i12;
import 'package:netflix_npp/application/search/search_bloc.dart' as _i9;
import 'package:netflix_npp/domain/download/i_download_repo.dart' as _i3;
import 'package:netflix_npp/domain/new_and_hot_resp/hot_and_new_repo.dart'
    as _i5;
import 'package:netflix_npp/domain/Search/i_search_repo.dart' as _i7;
import 'package:netflix_npp/infrastructor/downloads/download_repository.dart'
    as _i4;
import 'package:netflix_npp/infrastructor/hot_and_new/hot_and_new_repository.dart'
    as _i6;
import 'package:netflix_npp/infrastructor/search/search_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init(_i1.GetIt get,{
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      get,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadRepo>(() => _i4.Downloadrepository());
    gh.lazySingleton<_i5.IHotAndNewRepo>(() => _i6.HotAndNewRepository());
    gh.lazySingleton<_i7.ISearchRepo>(() => _i8.SearchRepository());
    gh.factory<_i9.SearchBloc>(() => _i9.SearchBloc(
          gh<_i3.IDownloadRepo>(),
          gh<_i7.ISearchRepo>(),
        ));
    gh.factory<_i10.DownloadsBloc>(
        () => _i10.DownloadsBloc(gh<_i3.IDownloadRepo>()));
    gh.factory<_i11.FastLaughBloc>(
        () => _i11.FastLaughBloc(gh<_i3.IDownloadRepo>()));
    gh.factory<_i12.HotAndNewBloc>(
        () => _i12.HotAndNewBloc(gh<_i5.IHotAndNewRepo>()));
    return get;
  }

