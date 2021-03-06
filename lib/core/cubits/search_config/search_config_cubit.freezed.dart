// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchConfigStateTearOff {
  const _$SearchConfigStateTearOff();

// ignore: unused_element
  _SearchConfigState call(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double range,
      @required bool isNoLimitRange,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) {
    return _SearchConfigState(
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
      range: range,
      isNoLimitRange: isNoLimitRange,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $SearchConfigState = _$SearchConfigStateTearOff();

mixin _$SearchConfigState {
  String get searchText;
  String get category;
  String get postedWithin;
  double get range;
  bool get isNoLimitRange;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

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
      double range,
      bool isNoLimitRange,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
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
    Object range = freezed,
    Object isNoLimitRange = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
      category: category == freezed ? _value.category : category as String,
      postedWithin: postedWithin == freezed
          ? _value.postedWithin
          : postedWithin as String,
      range: range == freezed ? _value.range : range as double,
      isNoLimitRange: isNoLimitRange == freezed
          ? _value.isNoLimitRange
          : isNoLimitRange as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
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
      double range,
      bool isNoLimitRange,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
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
    Object range = freezed,
    Object isNoLimitRange = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_SearchConfigState(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
      category: category == freezed ? _value.category : category as String,
      postedWithin: postedWithin == freezed
          ? _value.postedWithin
          : postedWithin as String,
      range: range == freezed ? _value.range : range as double,
      isNoLimitRange: isNoLimitRange == freezed
          ? _value.isNoLimitRange
          : isNoLimitRange as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_SearchConfigState implements _SearchConfigState {
  const _$_SearchConfigState(
      {@required this.searchText,
      @required this.category,
      @required this.postedWithin,
      @required this.range,
      @required this.isNoLimitRange,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      this.info})
      : assert(searchText != null),
        assert(category != null),
        assert(postedWithin != null),
        assert(range != null),
        assert(isNoLimitRange != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final String searchText;
  @override
  final String category;
  @override
  final String postedWithin;
  @override
  final double range;
  @override
  final bool isNoLimitRange;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'SearchConfigState(searchText: $searchText, category: $category, postedWithin: $postedWithin, range: $range, isNoLimitRange: $isNoLimitRange, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
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
            (identical(other.range, range) ||
                const DeepCollectionEquality().equals(other.range, range)) &&
            (identical(other.isNoLimitRange, isNoLimitRange) ||
                const DeepCollectionEquality()
                    .equals(other.isNoLimitRange, isNoLimitRange)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchText) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(postedWithin) ^
      const DeepCollectionEquality().hash(range) ^
      const DeepCollectionEquality().hash(isNoLimitRange) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$SearchConfigStateCopyWith<_SearchConfigState> get copyWith =>
      __$SearchConfigStateCopyWithImpl<_SearchConfigState>(this, _$identity);
}

abstract class _SearchConfigState implements SearchConfigState {
  const factory _SearchConfigState(
      {@required String searchText,
      @required String category,
      @required String postedWithin,
      @required double range,
      @required bool isNoLimitRange,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) = _$_SearchConfigState;

  @override
  String get searchText;
  @override
  String get category;
  @override
  String get postedWithin;
  @override
  double get range;
  @override
  bool get isNoLimitRange;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$SearchConfigStateCopyWith<_SearchConfigState> get copyWith;
}
