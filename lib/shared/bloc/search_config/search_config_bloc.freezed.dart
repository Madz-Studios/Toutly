// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchConfigEventTearOff {
  const _$SearchConfigEventTearOff();

  SearchConfigEventInit init() {
    return const SearchConfigEventInit();
  }

  SearchConfigEventClearSearchText clearSearchText() {
    return const SearchConfigEventClearSearchText();
  }

  SearchConfigSetConfigEvent setConfig(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double latitude,
      @required double longitude}) {
    return SearchConfigSetConfigEvent(
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
      latitude: latitude,
      longitude: longitude,
    );
  }
}

// ignore: unused_element
const $SearchConfigEvent = _$SearchConfigEventTearOff();

mixin _$SearchConfigEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result clearSearchText(),
    @required
        Result setConfig(String searchText, String category,
            String postedWithin, double latitude, double longitude),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result clearSearchText(),
    Result setConfig(String searchText, String category, String postedWithin,
        double latitude, double longitude),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(SearchConfigEventInit value),
    @required Result clearSearchText(SearchConfigEventClearSearchText value),
    @required Result setConfig(SearchConfigSetConfigEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchConfigEventInit value),
    Result clearSearchText(SearchConfigEventClearSearchText value),
    Result setConfig(SearchConfigSetConfigEvent value),
    @required Result orElse(),
  });
}

abstract class $SearchConfigEventCopyWith<$Res> {
  factory $SearchConfigEventCopyWith(
          SearchConfigEvent value, $Res Function(SearchConfigEvent) then) =
      _$SearchConfigEventCopyWithImpl<$Res>;
}

class _$SearchConfigEventCopyWithImpl<$Res>
    implements $SearchConfigEventCopyWith<$Res> {
  _$SearchConfigEventCopyWithImpl(this._value, this._then);

  final SearchConfigEvent _value;
  // ignore: unused_field
  final $Res Function(SearchConfigEvent) _then;
}

abstract class $SearchConfigEventInitCopyWith<$Res> {
  factory $SearchConfigEventInitCopyWith(SearchConfigEventInit value,
          $Res Function(SearchConfigEventInit) then) =
      _$SearchConfigEventInitCopyWithImpl<$Res>;
}

class _$SearchConfigEventInitCopyWithImpl<$Res>
    extends _$SearchConfigEventCopyWithImpl<$Res>
    implements $SearchConfigEventInitCopyWith<$Res> {
  _$SearchConfigEventInitCopyWithImpl(
      SearchConfigEventInit _value, $Res Function(SearchConfigEventInit) _then)
      : super(_value, (v) => _then(v as SearchConfigEventInit));

  @override
  SearchConfigEventInit get _value => super._value as SearchConfigEventInit;
}

class _$SearchConfigEventInit implements SearchConfigEventInit {
  const _$SearchConfigEventInit();

  @override
  String toString() {
    return 'SearchConfigEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchConfigEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result clearSearchText(),
    @required
        Result setConfig(String searchText, String category,
            String postedWithin, double latitude, double longitude),
  }) {
    assert(init != null);
    assert(clearSearchText != null);
    assert(setConfig != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result clearSearchText(),
    Result setConfig(String searchText, String category, String postedWithin,
        double latitude, double longitude),
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
    @required Result init(SearchConfigEventInit value),
    @required Result clearSearchText(SearchConfigEventClearSearchText value),
    @required Result setConfig(SearchConfigSetConfigEvent value),
  }) {
    assert(init != null);
    assert(clearSearchText != null);
    assert(setConfig != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchConfigEventInit value),
    Result clearSearchText(SearchConfigEventClearSearchText value),
    Result setConfig(SearchConfigSetConfigEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SearchConfigEventInit implements SearchConfigEvent {
  const factory SearchConfigEventInit() = _$SearchConfigEventInit;
}

abstract class $SearchConfigEventClearSearchTextCopyWith<$Res> {
  factory $SearchConfigEventClearSearchTextCopyWith(
          SearchConfigEventClearSearchText value,
          $Res Function(SearchConfigEventClearSearchText) then) =
      _$SearchConfigEventClearSearchTextCopyWithImpl<$Res>;
}

class _$SearchConfigEventClearSearchTextCopyWithImpl<$Res>
    extends _$SearchConfigEventCopyWithImpl<$Res>
    implements $SearchConfigEventClearSearchTextCopyWith<$Res> {
  _$SearchConfigEventClearSearchTextCopyWithImpl(
      SearchConfigEventClearSearchText _value,
      $Res Function(SearchConfigEventClearSearchText) _then)
      : super(_value, (v) => _then(v as SearchConfigEventClearSearchText));

  @override
  SearchConfigEventClearSearchText get _value =>
      super._value as SearchConfigEventClearSearchText;
}

class _$SearchConfigEventClearSearchText
    implements SearchConfigEventClearSearchText {
  const _$SearchConfigEventClearSearchText();

  @override
  String toString() {
    return 'SearchConfigEvent.clearSearchText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchConfigEventClearSearchText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result clearSearchText(),
    @required
        Result setConfig(String searchText, String category,
            String postedWithin, double latitude, double longitude),
  }) {
    assert(init != null);
    assert(clearSearchText != null);
    assert(setConfig != null);
    return clearSearchText();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result clearSearchText(),
    Result setConfig(String searchText, String category, String postedWithin,
        double latitude, double longitude),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearSearchText != null) {
      return clearSearchText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(SearchConfigEventInit value),
    @required Result clearSearchText(SearchConfigEventClearSearchText value),
    @required Result setConfig(SearchConfigSetConfigEvent value),
  }) {
    assert(init != null);
    assert(clearSearchText != null);
    assert(setConfig != null);
    return clearSearchText(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchConfigEventInit value),
    Result clearSearchText(SearchConfigEventClearSearchText value),
    Result setConfig(SearchConfigSetConfigEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearSearchText != null) {
      return clearSearchText(this);
    }
    return orElse();
  }
}

abstract class SearchConfigEventClearSearchText implements SearchConfigEvent {
  const factory SearchConfigEventClearSearchText() =
      _$SearchConfigEventClearSearchText;
}

abstract class $SearchConfigSetConfigEventCopyWith<$Res> {
  factory $SearchConfigSetConfigEventCopyWith(SearchConfigSetConfigEvent value,
          $Res Function(SearchConfigSetConfigEvent) then) =
      _$SearchConfigSetConfigEventCopyWithImpl<$Res>;
  $Res call(
      {String searchText,
      String category,
      String postedWithin,
      double latitude,
      double longitude});
}

class _$SearchConfigSetConfigEventCopyWithImpl<$Res>
    extends _$SearchConfigEventCopyWithImpl<$Res>
    implements $SearchConfigSetConfigEventCopyWith<$Res> {
  _$SearchConfigSetConfigEventCopyWithImpl(SearchConfigSetConfigEvent _value,
      $Res Function(SearchConfigSetConfigEvent) _then)
      : super(_value, (v) => _then(v as SearchConfigSetConfigEvent));

  @override
  SearchConfigSetConfigEvent get _value =>
      super._value as SearchConfigSetConfigEvent;

  @override
  $Res call({
    Object searchText = freezed,
    Object category = freezed,
    Object postedWithin = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(SearchConfigSetConfigEvent(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
      category: category == freezed ? _value.category : category as String,
      postedWithin: postedWithin == freezed
          ? _value.postedWithin
          : postedWithin as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$SearchConfigSetConfigEvent implements SearchConfigSetConfigEvent {
  const _$SearchConfigSetConfigEvent(
      {@required this.searchText,
      @required this.category,
      @required this.postedWithin,
      @required this.latitude,
      @required this.longitude})
      : assert(searchText != null),
        assert(category != null),
        assert(postedWithin != null),
        assert(latitude != null),
        assert(longitude != null);

  @override
  final String searchText;
  @override
  final String category;
  @override
  final String postedWithin;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'SearchConfigEvent.setConfig(searchText: $searchText, category: $category, postedWithin: $postedWithin, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchConfigSetConfigEvent &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.postedWithin, postedWithin) ||
                const DeepCollectionEquality()
                    .equals(other.postedWithin, postedWithin)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchText) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(postedWithin) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  $SearchConfigSetConfigEventCopyWith<SearchConfigSetConfigEvent>
      get copyWith =>
          _$SearchConfigSetConfigEventCopyWithImpl<SearchConfigSetConfigEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result clearSearchText(),
    @required
        Result setConfig(String searchText, String category,
            String postedWithin, double latitude, double longitude),
  }) {
    assert(init != null);
    assert(clearSearchText != null);
    assert(setConfig != null);
    return setConfig(searchText, category, postedWithin, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result clearSearchText(),
    Result setConfig(String searchText, String category, String postedWithin,
        double latitude, double longitude),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setConfig != null) {
      return setConfig(searchText, category, postedWithin, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(SearchConfigEventInit value),
    @required Result clearSearchText(SearchConfigEventClearSearchText value),
    @required Result setConfig(SearchConfigSetConfigEvent value),
  }) {
    assert(init != null);
    assert(clearSearchText != null);
    assert(setConfig != null);
    return setConfig(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(SearchConfigEventInit value),
    Result clearSearchText(SearchConfigEventClearSearchText value),
    Result setConfig(SearchConfigSetConfigEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setConfig != null) {
      return setConfig(this);
    }
    return orElse();
  }
}

abstract class SearchConfigSetConfigEvent implements SearchConfigEvent {
  const factory SearchConfigSetConfigEvent(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double latitude,
      @required double longitude}) = _$SearchConfigSetConfigEvent;

  String get searchText;
  String get category;
  String get postedWithin;
  double get latitude;
  double get longitude;
  $SearchConfigSetConfigEventCopyWith<SearchConfigSetConfigEvent> get copyWith;
}

class _$SearchConfigStateTearOff {
  const _$SearchConfigStateTearOff();

  _SearchConfigState call(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double latitude,
      @required double longitude}) {
    return _SearchConfigState(
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
      latitude: latitude,
      longitude: longitude,
    );
  }
}

// ignore: unused_element
const $SearchConfigState = _$SearchConfigStateTearOff();

mixin _$SearchConfigState {
  String get searchText;
  String get category;
  String get postedWithin;
  double get latitude;
  double get longitude;

  $SearchConfigStateCopyWith<SearchConfigState> get copyWith;
}

abstract class $SearchConfigStateCopyWith<$Res> {
  factory $SearchConfigStateCopyWith(
          SearchConfigState value, $Res Function(SearchConfigState) then) =
      _$SearchConfigStateCopyWithImpl<$Res>;
  $Res call(
      {String searchText,
      String category,
      String postedWithin,
      double latitude,
      double longitude});
}

class _$SearchConfigStateCopyWithImpl<$Res>
    implements $SearchConfigStateCopyWith<$Res> {
  _$SearchConfigStateCopyWithImpl(this._value, this._then);

  final SearchConfigState _value;
  // ignore: unused_field
  final $Res Function(SearchConfigState) _then;

  @override
  $Res call({
    Object searchText = freezed,
    Object category = freezed,
    Object postedWithin = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
      category: category == freezed ? _value.category : category as String,
      postedWithin: postedWithin == freezed
          ? _value.postedWithin
          : postedWithin as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

abstract class _$SearchConfigStateCopyWith<$Res>
    implements $SearchConfigStateCopyWith<$Res> {
  factory _$SearchConfigStateCopyWith(
          _SearchConfigState value, $Res Function(_SearchConfigState) then) =
      __$SearchConfigStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String searchText,
      String category,
      String postedWithin,
      double latitude,
      double longitude});
}

class __$SearchConfigStateCopyWithImpl<$Res>
    extends _$SearchConfigStateCopyWithImpl<$Res>
    implements _$SearchConfigStateCopyWith<$Res> {
  __$SearchConfigStateCopyWithImpl(
      _SearchConfigState _value, $Res Function(_SearchConfigState) _then)
      : super(_value, (v) => _then(v as _SearchConfigState));

  @override
  _SearchConfigState get _value => super._value as _SearchConfigState;

  @override
  $Res call({
    Object searchText = freezed,
    Object category = freezed,
    Object postedWithin = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_SearchConfigState(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
      category: category == freezed ? _value.category : category as String,
      postedWithin: postedWithin == freezed
          ? _value.postedWithin
          : postedWithin as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$_SearchConfigState implements _SearchConfigState {
  const _$_SearchConfigState(
      {@required this.searchText,
      @required this.category,
      @required this.postedWithin,
      @required this.latitude,
      @required this.longitude})
      : assert(searchText != null),
        assert(category != null),
        assert(postedWithin != null),
        assert(latitude != null),
        assert(longitude != null);

  @override
  final String searchText;
  @override
  final String category;
  @override
  final String postedWithin;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'SearchConfigState(searchText: $searchText, category: $category, postedWithin: $postedWithin, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchConfigState &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.postedWithin, postedWithin) ||
                const DeepCollectionEquality()
                    .equals(other.postedWithin, postedWithin)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchText) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(postedWithin) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  _$SearchConfigStateCopyWith<_SearchConfigState> get copyWith =>
      __$SearchConfigStateCopyWithImpl<_SearchConfigState>(this, _$identity);
}

abstract class _SearchConfigState implements SearchConfigState {
  const factory _SearchConfigState(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double latitude,
      @required double longitude}) = _$_SearchConfigState;

  @override
  String get searchText;
  @override
  String get category;
  @override
  String get postedWithin;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  _$SearchConfigStateCopyWith<_SearchConfigState> get copyWith;
}
