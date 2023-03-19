// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializes,
    required TResult Function(String movieQury) seachMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializes,
    TResult? Function(String movieQury)? seachMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializes,
    TResult Function(String movieQury)? seachMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializes value) initializes,
    required TResult Function(SeachMovie value) seachMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializes value)? initializes,
    TResult? Function(SeachMovie value)? seachMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializes value)? initializes,
    TResult Function(SeachMovie value)? seachMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializesCopyWith<$Res> {
  factory _$$InitializesCopyWith(
          _$Initializes value, $Res Function(_$Initializes) then) =
      __$$InitializesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$Initializes>
    implements _$$InitializesCopyWith<$Res> {
  __$$InitializesCopyWithImpl(
      _$Initializes _value, $Res Function(_$Initializes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initializes implements Initializes {
  const _$Initializes();

  @override
  String toString() {
    return 'SearchEvent.initializes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initializes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializes,
    required TResult Function(String movieQury) seachMovie,
  }) {
    return initializes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializes,
    TResult? Function(String movieQury)? seachMovie,
  }) {
    return initializes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializes,
    TResult Function(String movieQury)? seachMovie,
    required TResult orElse(),
  }) {
    if (initializes != null) {
      return initializes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializes value) initializes,
    required TResult Function(SeachMovie value) seachMovie,
  }) {
    return initializes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializes value)? initializes,
    TResult? Function(SeachMovie value)? seachMovie,
  }) {
    return initializes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializes value)? initializes,
    TResult Function(SeachMovie value)? seachMovie,
    required TResult orElse(),
  }) {
    if (initializes != null) {
      return initializes(this);
    }
    return orElse();
  }
}

abstract class Initializes implements SearchEvent {
  const factory Initializes() = _$Initializes;
}

/// @nodoc
abstract class _$$SeachMovieCopyWith<$Res> {
  factory _$$SeachMovieCopyWith(
          _$SeachMovie value, $Res Function(_$SeachMovie) then) =
      __$$SeachMovieCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQury});
}

/// @nodoc
class __$$SeachMovieCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SeachMovie>
    implements _$$SeachMovieCopyWith<$Res> {
  __$$SeachMovieCopyWithImpl(
      _$SeachMovie _value, $Res Function(_$SeachMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQury = null,
  }) {
    return _then(_$SeachMovie(
      movieQury: null == movieQury
          ? _value.movieQury
          : movieQury // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SeachMovie implements SeachMovie {
  const _$SeachMovie({required this.movieQury});

  @override
  final String movieQury;

  @override
  String toString() {
    return 'SearchEvent.seachMovie(movieQury: $movieQury)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeachMovie &&
            (identical(other.movieQury, movieQury) ||
                other.movieQury == movieQury));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQury);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeachMovieCopyWith<_$SeachMovie> get copyWith =>
      __$$SeachMovieCopyWithImpl<_$SeachMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializes,
    required TResult Function(String movieQury) seachMovie,
  }) {
    return seachMovie(movieQury);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializes,
    TResult? Function(String movieQury)? seachMovie,
  }) {
    return seachMovie?.call(movieQury);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializes,
    TResult Function(String movieQury)? seachMovie,
    required TResult orElse(),
  }) {
    if (seachMovie != null) {
      return seachMovie(movieQury);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializes value) initializes,
    required TResult Function(SeachMovie value) seachMovie,
  }) {
    return seachMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializes value)? initializes,
    TResult? Function(SeachMovie value)? seachMovie,
  }) {
    return seachMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializes value)? initializes,
    TResult Function(SeachMovie value)? seachMovie,
    required TResult orElse(),
  }) {
    if (seachMovie != null) {
      return seachMovie(this);
    }
    return orElse();
  }
}

abstract class SeachMovie implements SearchEvent {
  const factory SeachMovie({required final String movieQury}) = _$SeachMovie;

  String get movieQury;
  @JsonKey(ignore: true)
  _$$SeachMovieCopyWith<_$SeachMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchResultData> get searchResultList =>
      throw _privateConstructorUsedError;
  List<Downloads> get idleList => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SearchResultData> searchResultList,
      List<Downloads> idleList,
      bool isloading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultList = null,
    Object? idleList = null,
    Object? isloading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      searchResultList: null == searchResultList
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      idleList: null == idleList
          ? _value.idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchResultData> searchResultList,
      List<Downloads> idleList,
      bool isloading,
      bool isError});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultList = null,
    Object? idleList = null,
    Object? isloading = null,
    Object? isError = null,
  }) {
    return _then(_$_SearchState(
      searchResultList: null == searchResultList
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      idleList: null == idleList
          ? _value._idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<SearchResultData> searchResultList,
      required final List<Downloads> idleList,
      required this.isloading,
      required this.isError})
      : _searchResultList = searchResultList,
        _idleList = idleList;

  final List<SearchResultData> _searchResultList;
  @override
  List<SearchResultData> get searchResultList {
    if (_searchResultList is EqualUnmodifiableListView)
      return _searchResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  final List<Downloads> _idleList;
  @override
  List<Downloads> get idleList {
    if (_idleList is EqualUnmodifiableListView) return _idleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idleList);
  }

  @override
  final bool isloading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(searchResultList: $searchResultList, idleList: $idleList, isloading: $isloading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            const DeepCollectionEquality().equals(other._idleList, _idleList) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResultList),
      const DeepCollectionEquality().hash(_idleList),
      isloading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchResultData> searchResultList,
      required final List<Downloads> idleList,
      required final bool isloading,
      required final bool isError}) = _$_SearchState;

  @override
  List<SearchResultData> get searchResultList;
  @override
  List<Downloads> get idleList;
  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
