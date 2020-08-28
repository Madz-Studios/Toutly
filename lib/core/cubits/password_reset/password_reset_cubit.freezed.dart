// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'password_reset_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PasswordResetStateTearOff {
  const _$PasswordResetStateTearOff();

// ignore: unused_element
  _PasswordResetState call(
      {@required bool isEmailValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _PasswordResetState(
      isEmailValid: isEmailValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $PasswordResetState = _$PasswordResetStateTearOff();

mixin _$PasswordResetState {
  bool get isEmailValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $PasswordResetStateCopyWith<PasswordResetState> get copyWith;
}

abstract class $PasswordResetStateCopyWith<$Res> {
  factory $PasswordResetStateCopyWith(
          PasswordResetState value, $Res Function(PasswordResetState) then) =
      _$PasswordResetStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEmailValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$PasswordResetStateCopyWithImpl<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  _$PasswordResetStateCopyWithImpl(this._value, this._then);

  final PasswordResetState _value;
  // ignore: unused_field
  final $Res Function(PasswordResetState) _then;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$PasswordResetStateCopyWith<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  factory _$PasswordResetStateCopyWith(
          _PasswordResetState value, $Res Function(_PasswordResetState) then) =
      __$PasswordResetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEmailValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$PasswordResetStateCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res>
    implements _$PasswordResetStateCopyWith<$Res> {
  __$PasswordResetStateCopyWithImpl(
      _PasswordResetState _value, $Res Function(_PasswordResetState) _then)
      : super(_value, (v) => _then(v as _PasswordResetState));

  @override
  _PasswordResetState get _value => super._value as _PasswordResetState;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_PasswordResetState(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_PasswordResetState implements _PasswordResetState {
  const _$_PasswordResetState(
      {@required this.isEmailValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isEmailValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final bool isEmailValid;
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
    return 'PasswordResetState(isEmailValid: $isEmailValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordResetState &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
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
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$PasswordResetStateCopyWith<_PasswordResetState> get copyWith =>
      __$PasswordResetStateCopyWithImpl<_PasswordResetState>(this, _$identity);
}

abstract class _PasswordResetState implements PasswordResetState {
  const factory _PasswordResetState(
      {@required bool isEmailValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_PasswordResetState;

  @override
  bool get isEmailValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$PasswordResetStateCopyWith<_PasswordResetState> get copyWith;
}
