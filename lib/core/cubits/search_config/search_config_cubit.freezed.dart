// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchConfigStateTearOff {
  const _$SearchConfigStateTearOff();

  _SearchConfigState call(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double latitude,
      @required double longitude,
      @required String algoliaAppId,
      @required String algoliaSearchApiKey}) {
    return _SearchConfigState(
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
      latitude: latitude,
      longitude: longitude,
      algoliaAppId: algoliaAppId,
      algoliaSearchApiKey: algoliaSearchApiKey,
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
  String get algoliaAppId;
  String get algoliaSearchApiKey;

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
      double longitude,
      String algoliaAppId,
      String algoliaSearchApiKey});
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
    Object algoliaAppId = freezed,
    Object algoliaSearchApiKey = freezed,
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
      algoliaAppId: algoliaAppId == freezed
          ? _value.algoliaAppId
          : algoliaAppId as String,
      algoliaSearchApiKey: algoliaSearchApiKey == freezed
          ? _value.algoliaSearchApiKey
          : algoliaSearchApiKey as String,
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
      double longitude,
      String algoliaAppId,
      String algoliaSearchApiKey});
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
    Object algoliaAppId = freezed,
    Object algoliaSearchApiKey = freezed,
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
      algoliaAppId: algoliaAppId == freezed
          ? _value.algoliaAppId
          : algoliaAppId as String,
      algoliaSearchApiKey: algoliaSearchApiKey == freezed
          ? _value.algoliaSearchApiKey
          : algoliaSearchApiKey as String,
    ));
  }
}

class _$_SearchConfigState implements _SearchConfigState {
  const _$_SearchConfigState(
      {@required this.searchText,
      @required this.category,
      @required this.postedWithin,
      @required this.latitude,
      @required this.longitude,
      @required this.algoliaAppId,
      @required this.algoliaSearchApiKey})
      : assert(searchText != null),
        assert(category != null),
        assert(postedWithin != null),
        assert(latitude != null),
        assert(longitude != null),
        assert(algoliaAppId != null),
        assert(algoliaSearchApiKey != null);

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
  final String algoliaAppId;
  @override
  final String algoliaSearchApiKey;

  @override
  String toString() {
    return 'SearchConfigState(searchText: $searchText, category: $category, postedWithin: $postedWithin, latitude: $latitude, longitude: $longitude, algoliaAppId: $algoliaAppId, algoliaSearchApiKey: $algoliaSearchApiKey)';
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
                    .equals(other.longitude, longitude)) &&
            (identical(other.algoliaAppId, algoliaAppId) ||
                const DeepCollectionEquality()
                    .equals(other.algoliaAppId, algoliaAppId)) &&
            (identical(other.algoliaSearchApiKey, algoliaSearchApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.algoliaSearchApiKey, algoliaSearchApiKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchText) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(postedWithin) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(algoliaAppId) ^
      const DeepCollectionEquality().hash(algoliaSearchApiKey);

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
      @required double longitude,
      @required String algoliaAppId,
      @required String algoliaSearchApiKey}) = _$_SearchConfigState;

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
  String get algoliaAppId;
  @override
  String get algoliaSearchApiKey;
  @override
  _$SearchConfigStateCopyWith<_SearchConfigState> get copyWith;
}
