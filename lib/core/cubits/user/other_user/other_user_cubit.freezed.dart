// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'other_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OtherUserStateTearOff {
  const _$OtherUserStateTearOff();

  _OtherUserState call(
      {@required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _OtherUserState(
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $OtherUserState = _$OtherUserStateTearOff();

mixin _$OtherUserState {
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $OtherUserStateCopyWith<OtherUserState> get copyWith;
}

abstract class $OtherUserStateCopyWith<$Res> {
  factory $OtherUserStateCopyWith(
          OtherUserState value, $Res Function(OtherUserState) then) =
      _$OtherUserStateCopyWithImpl<$Res>;
  $Res call({bool isSubmitting, bool isSuccess, bool isFailure, String info});
}

class _$OtherUserStateCopyWithImpl<$Res>
    implements $OtherUserStateCopyWith<$Res> {
  _$OtherUserStateCopyWithImpl(this._value, this._then);

  final OtherUserState _value;
  // ignore: unused_field
  final $Res Function(OtherUserState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$OtherUserStateCopyWith<$Res>
    implements $OtherUserStateCopyWith<$Res> {
  factory _$OtherUserStateCopyWith(
          _OtherUserState value, $Res Function(_OtherUserState) then) =
      __$OtherUserStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSubmitting, bool isSuccess, bool isFailure, String info});
}

class __$OtherUserStateCopyWithImpl<$Res>
    extends _$OtherUserStateCopyWithImpl<$Res>
    implements _$OtherUserStateCopyWith<$Res> {
  __$OtherUserStateCopyWithImpl(
      _OtherUserState _value, $Res Function(_OtherUserState) _then)
      : super(_value, (v) => _then(v as _OtherUserState));

  @override
  _OtherUserState get _value => super._value as _OtherUserState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_OtherUserState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_OtherUserState implements _OtherUserState {
  const _$_OtherUserState(
      {@required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

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
    return 'OtherUserState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherUserState &&
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
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$OtherUserStateCopyWith<_OtherUserState> get copyWith =>
      __$OtherUserStateCopyWithImpl<_OtherUserState>(this, _$identity);
}

abstract class _OtherUserState implements OtherUserState {
  const factory _OtherUserState(
      {@required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_OtherUserState;

  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$OtherUserStateCopyWith<_OtherUserState> get copyWith;
}
