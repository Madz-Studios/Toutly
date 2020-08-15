// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'likes_current_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LikesCurrentUserStateTearOff {
  const _$LikesCurrentUserStateTearOff();

  _LikesState call(
      {@required Future<List<BarterModel>> listings,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _LikesState(
      listings: listings,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $LikesCurrentUserState = _$LikesCurrentUserStateTearOff();

mixin _$LikesCurrentUserState {
  Future<List<BarterModel>> get listings;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $LikesCurrentUserStateCopyWith<LikesCurrentUserState> get copyWith;
}

abstract class $LikesCurrentUserStateCopyWith<$Res> {
  factory $LikesCurrentUserStateCopyWith(LikesCurrentUserState value,
          $Res Function(LikesCurrentUserState) then) =
      _$LikesCurrentUserStateCopyWithImpl<$Res>;
  $Res call(
      {Future<List<BarterModel>> listings,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$LikesCurrentUserStateCopyWithImpl<$Res>
    implements $LikesCurrentUserStateCopyWith<$Res> {
  _$LikesCurrentUserStateCopyWithImpl(this._value, this._then);

  final LikesCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(LikesCurrentUserState) _then;

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

abstract class _$LikesStateCopyWith<$Res>
    implements $LikesCurrentUserStateCopyWith<$Res> {
  factory _$LikesStateCopyWith(
          _LikesState value, $Res Function(_LikesState) then) =
      __$LikesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Future<List<BarterModel>> listings,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$LikesStateCopyWithImpl<$Res>
    extends _$LikesCurrentUserStateCopyWithImpl<$Res>
    implements _$LikesStateCopyWith<$Res> {
  __$LikesStateCopyWithImpl(
      _LikesState _value, $Res Function(_LikesState) _then)
      : super(_value, (v) => _then(v as _LikesState));

  @override
  _LikesState get _value => super._value as _LikesState;

  @override
  $Res call({
    Object listings = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_LikesState(
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

class _$_LikesState implements _LikesState {
  const _$_LikesState(
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
    return 'LikesCurrentUserState(listings: $listings, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikesState &&
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
  _$LikesStateCopyWith<_LikesState> get copyWith =>
      __$LikesStateCopyWithImpl<_LikesState>(this, _$identity);
}

abstract class _LikesState implements LikesCurrentUserState {
  const factory _LikesState(
      {@required Future<List<BarterModel>> listings,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_LikesState;

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
  _$LikesStateCopyWith<_LikesState> get copyWith;
}
