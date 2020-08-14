// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'likes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LikesStateTearOff {
  const _$LikesStateTearOff();

  _BarterState call(
      {@required Future<List<BarterModel>> listings,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _BarterState(
      listings: listings,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $LikesState = _$LikesStateTearOff();

mixin _$LikesState {
  Future<List<BarterModel>> get listings;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $LikesStateCopyWith<LikesState> get copyWith;
}

abstract class $LikesStateCopyWith<$Res> {
  factory $LikesStateCopyWith(
          LikesState value, $Res Function(LikesState) then) =
      _$LikesStateCopyWithImpl<$Res>;
  $Res call(
      {Future<List<BarterModel>> listings,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$LikesStateCopyWithImpl<$Res> implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  final LikesState _value;
  // ignore: unused_field
  final $Res Function(LikesState) _then;

  @override
  $Res call({
    Object listings = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      listings: listings == freezed
          ? _value.listings
          : listings as Future<List<BarterModel>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$BarterStateCopyWith<$Res>
    implements $LikesStateCopyWith<$Res> {
  factory _$BarterStateCopyWith(
          _BarterState value, $Res Function(_BarterState) then) =
      __$BarterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Future<List<BarterModel>> listings,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$BarterStateCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements _$BarterStateCopyWith<$Res> {
  __$BarterStateCopyWithImpl(
      _BarterState _value, $Res Function(_BarterState) _then)
      : super(_value, (v) => _then(v as _BarterState));

  @override
  _BarterState get _value => super._value as _BarterState;

  @override
  $Res call({
    Object listings = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_BarterState(
      listings: listings == freezed
          ? _value.listings
          : listings as Future<List<BarterModel>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_BarterState implements _BarterState {
  const _$_BarterState(
      {@required this.listings,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(listings != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Future<List<BarterModel>> listings;
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
    return 'LikesState(listings: $listings, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarterState &&
            (identical(other.listings, listings) ||
                const DeepCollectionEquality()
                    .equals(other.listings, listings)) &&
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
      const DeepCollectionEquality().hash(listings) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$BarterStateCopyWith<_BarterState> get copyWith =>
      __$BarterStateCopyWithImpl<_BarterState>(this, _$identity);
}

abstract class _BarterState implements LikesState {
  const factory _BarterState(
      {@required Future<List<BarterModel>> listings,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_BarterState;

  @override
  Future<List<BarterModel>> get listings;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$BarterStateCopyWith<_BarterState> get copyWith;
}
