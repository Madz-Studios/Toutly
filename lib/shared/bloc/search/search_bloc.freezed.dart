// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  SearchEventInit init() {
    return const SearchEventInit();
  }

  SearchEventSearch search(
      {@required String algoliaAppId,
      @required String algoliaSearchApiKey,
      @required double latitude,
      @required double longitude,
      @required String searchText,
      @required String category,
      @required String postedWithin}) {
    return SearchEventSearch(
      algoliaAppId: algoliaAppId,
      algoliaSearchApiKey: algoliaSearchApiKey,
      latitude: latitude,
      longitude: longitude,
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String algoliaAppId,
            String algoliaSearchApiKey,
            double latitude,
            double longitude,
            String searchText,
            String category,
            String postedWithin),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String algoliaAppId,
        String algoliaSearchApiKey,
        double latitude,
        double longitude,
        String searchText,
        String category,
        String postedWithin),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(SearchEventInit value),
    @required Result search(SearchEventSearch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchEventInit value),
    Result search(SearchEventSearch value),
    @required Result orElse(),
  });
}

abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

abstract class $SearchEventInitCopyWith<$Res> {
  factory $SearchEventInitCopyWith(
          SearchEventInit value, $Res Function(SearchEventInit) then) =
      _$SearchEventInitCopyWithImpl<$Res>;
}

class _$SearchEventInitCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventInitCopyWith<$Res> {
  _$SearchEventInitCopyWithImpl(
      SearchEventInit _value, $Res Function(SearchEventInit) _then)
      : super(_value, (v) => _then(v as SearchEventInit));

  @override
  SearchEventInit get _value => super._value as SearchEventInit;
}

class _$SearchEventInit
    with DiagnosticableTreeMixin
    implements SearchEventInit {
  const _$SearchEventInit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String algoliaAppId,
            String algoliaSearchApiKey,
            double latitude,
            double longitude,
            String searchText,
            String category,
            String postedWithin),
  }) {
    assert(init != null);
    assert(search != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String algoliaAppId,
        String algoliaSearchApiKey,
        double latitude,
        double longitude,
        String searchText,
        String category,
        String postedWithin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(SearchEventInit value),
    @required Result search(SearchEventSearch value),
  }) {
    assert(init != null);
    assert(search != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchEventInit value),
    Result search(SearchEventSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SearchEventInit implements SearchEvent {
  const factory SearchEventInit() = _$SearchEventInit;
}

abstract class $SearchEventSearchCopyWith<$Res> {
  factory $SearchEventSearchCopyWith(
          SearchEventSearch value, $Res Function(SearchEventSearch) then) =
      _$SearchEventSearchCopyWithImpl<$Res>;
  $Res call(
      {String algoliaAppId,
      String algoliaSearchApiKey,
      double latitude,
      double longitude,
      String searchText,
      String category,
      String postedWithin});
}

class _$SearchEventSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventSearchCopyWith<$Res> {
  _$SearchEventSearchCopyWithImpl(
      SearchEventSearch _value, $Res Function(SearchEventSearch) _then)
      : super(_value, (v) => _then(v as SearchEventSearch));

  @override
  SearchEventSearch get _value => super._value as SearchEventSearch;

  @override
  $Res call({
    Object algoliaAppId = freezed,
    Object algoliaSearchApiKey = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object searchText = freezed,
    Object category = freezed,
    Object postedWithin = freezed,
  }) {
    return _then(SearchEventSearch(
      algoliaAppId: algoliaAppId == freezed
          ? _value.algoliaAppId
          : algoliaAppId as String,
      algoliaSearchApiKey: algoliaSearchApiKey == freezed
          ? _value.algoliaSearchApiKey
          : algoliaSearchApiKey as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
      category: category == freezed ? _value.category : category as String,
      postedWithin: postedWithin == freezed
          ? _value.postedWithin
          : postedWithin as String,
    ));
  }
}

class _$SearchEventSearch
    with DiagnosticableTreeMixin
    implements SearchEventSearch {
  const _$SearchEventSearch(
      {@required this.algoliaAppId,
      @required this.algoliaSearchApiKey,
      @required this.latitude,
      @required this.longitude,
      @required this.searchText,
      @required this.category,
      @required this.postedWithin})
      : assert(algoliaAppId != null),
        assert(algoliaSearchApiKey != null),
        assert(latitude != null),
        assert(longitude != null),
        assert(searchText != null),
        assert(category != null),
        assert(postedWithin != null);

  @override
  final String algoliaAppId;
  @override
  final String algoliaSearchApiKey;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String searchText;
  @override
  final String category;
  @override
  final String postedWithin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.search(algoliaAppId: $algoliaAppId, algoliaSearchApiKey: $algoliaSearchApiKey, latitude: $latitude, longitude: $longitude, searchText: $searchText, category: $category, postedWithin: $postedWithin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.search'))
      ..add(DiagnosticsProperty('algoliaAppId', algoliaAppId))
      ..add(DiagnosticsProperty('algoliaSearchApiKey', algoliaSearchApiKey))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('searchText', searchText))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('postedWithin', postedWithin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchEventSearch &&
            (identical(other.algoliaAppId, algoliaAppId) ||
                const DeepCollectionEquality()
                    .equals(other.algoliaAppId, algoliaAppId)) &&
            (identical(other.algoliaSearchApiKey, algoliaSearchApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.algoliaSearchApiKey, algoliaSearchApiKey)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.postedWithin, postedWithin) ||
                const DeepCollectionEquality()
                    .equals(other.postedWithin, postedWithin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(algoliaAppId) ^
      const DeepCollectionEquality().hash(algoliaSearchApiKey) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(searchText) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(postedWithin);

  @override
  $SearchEventSearchCopyWith<SearchEventSearch> get copyWith =>
      _$SearchEventSearchCopyWithImpl<SearchEventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String algoliaAppId,
            String algoliaSearchApiKey,
            double latitude,
            double longitude,
            String searchText,
            String category,
            String postedWithin),
  }) {
    assert(init != null);
    assert(search != null);
    return search(algoliaAppId, algoliaSearchApiKey, latitude, longitude,
        searchText, category, postedWithin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String algoliaAppId,
        String algoliaSearchApiKey,
        double latitude,
        double longitude,
        String searchText,
        String category,
        String postedWithin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(algoliaAppId, algoliaSearchApiKey, latitude, longitude,
          searchText, category, postedWithin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(SearchEventInit value),
    @required Result search(SearchEventSearch value),
  }) {
    assert(init != null);
    assert(search != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchEventInit value),
    Result search(SearchEventSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchEventSearch implements SearchEvent {
  const factory SearchEventSearch(
      {@required String algoliaAppId,
      @required String algoliaSearchApiKey,
      @required double latitude,
      @required double longitude,
      @required String searchText,
      @required String category,
      @required String postedWithin}) = _$SearchEventSearch;

  String get algoliaAppId;
  String get algoliaSearchApiKey;
  double get latitude;
  double get longitude;
  String get searchText;
  String get category;
  String get postedWithin;
  $SearchEventSearchCopyWith<SearchEventSearch> get copyWith;
}

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  SearchStateEmpty empty() {
    return const SearchStateEmpty();
  }

  SearchStateLoading loading() {
    return const SearchStateLoading();
  }

  SearchStateLoaded loaded(AlgoliaQuerySnapshot data) {
    return SearchStateLoaded(
      data,
    );
  }

  SearchStateFailure failure(String info) {
    return SearchStateFailure(
      info,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result loaded(AlgoliaQuerySnapshot data),
    @required Result failure(String info),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result loaded(AlgoliaQuerySnapshot data),
    Result failure(String info),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(SearchStateEmpty value),
    @required Result loading(SearchStateLoading value),
    @required Result loaded(SearchStateLoaded value),
    @required Result failure(SearchStateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(SearchStateEmpty value),
    Result loading(SearchStateLoading value),
    Result loaded(SearchStateLoaded value),
    Result failure(SearchStateFailure value),
    @required Result orElse(),
  });
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

abstract class $SearchStateEmptyCopyWith<$Res> {
  factory $SearchStateEmptyCopyWith(
          SearchStateEmpty value, $Res Function(SearchStateEmpty) then) =
      _$SearchStateEmptyCopyWithImpl<$Res>;
}

class _$SearchStateEmptyCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateEmptyCopyWith<$Res> {
  _$SearchStateEmptyCopyWithImpl(
      SearchStateEmpty _value, $Res Function(SearchStateEmpty) _then)
      : super(_value, (v) => _then(v as SearchStateEmpty));

  @override
  SearchStateEmpty get _value => super._value as SearchStateEmpty;
}

class _$SearchStateEmpty
    with DiagnosticableTreeMixin
    implements SearchStateEmpty {
  const _$SearchStateEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result loaded(AlgoliaQuerySnapshot data),
    @required Result failure(String info),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result loaded(AlgoliaQuerySnapshot data),
    Result failure(String info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(SearchStateEmpty value),
    @required Result loading(SearchStateLoading value),
    @required Result loaded(SearchStateLoaded value),
    @required Result failure(SearchStateFailure value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(SearchStateEmpty value),
    Result loading(SearchStateLoading value),
    Result loaded(SearchStateLoaded value),
    Result failure(SearchStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SearchStateEmpty implements SearchState {
  const factory SearchStateEmpty() = _$SearchStateEmpty;
}

abstract class $SearchStateLoadingCopyWith<$Res> {
  factory $SearchStateLoadingCopyWith(
          SearchStateLoading value, $Res Function(SearchStateLoading) then) =
      _$SearchStateLoadingCopyWithImpl<$Res>;
}

class _$SearchStateLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateLoadingCopyWith<$Res> {
  _$SearchStateLoadingCopyWithImpl(
      SearchStateLoading _value, $Res Function(SearchStateLoading) _then)
      : super(_value, (v) => _then(v as SearchStateLoading));

  @override
  SearchStateLoading get _value => super._value as SearchStateLoading;
}

class _$SearchStateLoading
    with DiagnosticableTreeMixin
    implements SearchStateLoading {
  const _$SearchStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result loaded(AlgoliaQuerySnapshot data),
    @required Result failure(String info),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result loaded(AlgoliaQuerySnapshot data),
    Result failure(String info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(SearchStateEmpty value),
    @required Result loading(SearchStateLoading value),
    @required Result loaded(SearchStateLoaded value),
    @required Result failure(SearchStateFailure value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(SearchStateEmpty value),
    Result loading(SearchStateLoading value),
    Result loaded(SearchStateLoaded value),
    Result failure(SearchStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchStateLoading implements SearchState {
  const factory SearchStateLoading() = _$SearchStateLoading;
}

abstract class $SearchStateLoadedCopyWith<$Res> {
  factory $SearchStateLoadedCopyWith(
          SearchStateLoaded value, $Res Function(SearchStateLoaded) then) =
      _$SearchStateLoadedCopyWithImpl<$Res>;
  $Res call({AlgoliaQuerySnapshot data});
}

class _$SearchStateLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateLoadedCopyWith<$Res> {
  _$SearchStateLoadedCopyWithImpl(
      SearchStateLoaded _value, $Res Function(SearchStateLoaded) _then)
      : super(_value, (v) => _then(v as SearchStateLoaded));

  @override
  SearchStateLoaded get _value => super._value as SearchStateLoaded;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(SearchStateLoaded(
      data == freezed ? _value.data : data as AlgoliaQuerySnapshot,
    ));
  }
}

class _$SearchStateLoaded
    with DiagnosticableTreeMixin
    implements SearchStateLoaded {
  const _$SearchStateLoaded(this.data) : assert(data != null);

  @override
  final AlgoliaQuerySnapshot data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.loaded(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.loaded'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateLoaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $SearchStateLoadedCopyWith<SearchStateLoaded> get copyWith =>
      _$SearchStateLoadedCopyWithImpl<SearchStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result loaded(AlgoliaQuerySnapshot data),
    @required Result failure(String info),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result loaded(AlgoliaQuerySnapshot data),
    Result failure(String info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(SearchStateEmpty value),
    @required Result loading(SearchStateLoading value),
    @required Result loaded(SearchStateLoaded value),
    @required Result failure(SearchStateFailure value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(SearchStateEmpty value),
    Result loading(SearchStateLoading value),
    Result loaded(SearchStateLoaded value),
    Result failure(SearchStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchStateLoaded implements SearchState {
  const factory SearchStateLoaded(AlgoliaQuerySnapshot data) =
      _$SearchStateLoaded;

  AlgoliaQuerySnapshot get data;
  $SearchStateLoadedCopyWith<SearchStateLoaded> get copyWith;
}

abstract class $SearchStateFailureCopyWith<$Res> {
  factory $SearchStateFailureCopyWith(
          SearchStateFailure value, $Res Function(SearchStateFailure) then) =
      _$SearchStateFailureCopyWithImpl<$Res>;
  $Res call({String info});
}

class _$SearchStateFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateFailureCopyWith<$Res> {
  _$SearchStateFailureCopyWithImpl(
      SearchStateFailure _value, $Res Function(SearchStateFailure) _then)
      : super(_value, (v) => _then(v as SearchStateFailure));

  @override
  SearchStateFailure get _value => super._value as SearchStateFailure;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(SearchStateFailure(
      info == freezed ? _value.info : info as String,
    ));
  }
}

class _$SearchStateFailure
    with DiagnosticableTreeMixin
    implements SearchStateFailure {
  const _$SearchStateFailure(this.info) : assert(info != null);

  @override
  final String info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.failure(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.failure'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateFailure &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @override
  $SearchStateFailureCopyWith<SearchStateFailure> get copyWith =>
      _$SearchStateFailureCopyWithImpl<SearchStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result loaded(AlgoliaQuerySnapshot data),
    @required Result failure(String info),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(info);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result loaded(AlgoliaQuerySnapshot data),
    Result failure(String info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(SearchStateEmpty value),
    @required Result loading(SearchStateLoading value),
    @required Result loaded(SearchStateLoaded value),
    @required Result failure(SearchStateFailure value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(SearchStateEmpty value),
    Result loading(SearchStateLoading value),
    Result loaded(SearchStateLoaded value),
    Result failure(SearchStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SearchStateFailure implements SearchState {
  const factory SearchStateFailure(String info) = _$SearchStateFailure;

  String get info;
  $SearchStateFailureCopyWith<SearchStateFailure> get copyWith;
}
