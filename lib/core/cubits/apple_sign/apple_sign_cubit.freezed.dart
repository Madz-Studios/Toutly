// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'apple_sign_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppleSignStateTearOff {
  const _$AppleSignStateTearOff();

// ignore: unused_element
  _AppleSignState call({@required bool isAppleSignInAvailable}) {
    return _AppleSignState(
      isAppleSignInAvailable: isAppleSignInAvailable,
    );
  }
}

// ignore: unused_element
const $AppleSignState = _$AppleSignStateTearOff();

mixin _$AppleSignState {
  bool get isAppleSignInAvailable;

  $AppleSignStateCopyWith<AppleSignState> get copyWith;
}

abstract class $AppleSignStateCopyWith<$Res> {
  factory $AppleSignStateCopyWith(
          AppleSignState value, $Res Function(AppleSignState) then) =
      _$AppleSignStateCopyWithImpl<$Res>;
  $Res call({bool isAppleSignInAvailable});
}

class _$AppleSignStateCopyWithImpl<$Res>
    implements $AppleSignStateCopyWith<$Res> {
  _$AppleSignStateCopyWithImpl(this._value, this._then);

  final AppleSignState _value;
  // ignore: unused_field
  final $Res Function(AppleSignState) _then;

  @override
  $Res call({
    Object isAppleSignInAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isAppleSignInAvailable: isAppleSignInAvailable == freezed
          ? _value.isAppleSignInAvailable
          : isAppleSignInAvailable as bool,
    ));
  }
}

abstract class _$AppleSignStateCopyWith<$Res>
    implements $AppleSignStateCopyWith<$Res> {
  factory _$AppleSignStateCopyWith(
          _AppleSignState value, $Res Function(_AppleSignState) then) =
      __$AppleSignStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAppleSignInAvailable});
}

class __$AppleSignStateCopyWithImpl<$Res>
    extends _$AppleSignStateCopyWithImpl<$Res>
    implements _$AppleSignStateCopyWith<$Res> {
  __$AppleSignStateCopyWithImpl(
      _AppleSignState _value, $Res Function(_AppleSignState) _then)
      : super(_value, (v) => _then(v as _AppleSignState));

  @override
  _AppleSignState get _value => super._value as _AppleSignState;

  @override
  $Res call({
    Object isAppleSignInAvailable = freezed,
  }) {
    return _then(_AppleSignState(
      isAppleSignInAvailable: isAppleSignInAvailable == freezed
          ? _value.isAppleSignInAvailable
          : isAppleSignInAvailable as bool,
    ));
  }
}

class _$_AppleSignState implements _AppleSignState {
  const _$_AppleSignState({@required this.isAppleSignInAvailable})
      : assert(isAppleSignInAvailable != null);

  @override
  final bool isAppleSignInAvailable;

  @override
  String toString() {
    return 'AppleSignState(isAppleSignInAvailable: $isAppleSignInAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppleSignState &&
            (identical(other.isAppleSignInAvailable, isAppleSignInAvailable) ||
                const DeepCollectionEquality().equals(
                    other.isAppleSignInAvailable, isAppleSignInAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAppleSignInAvailable);

  @override
  _$AppleSignStateCopyWith<_AppleSignState> get copyWith =>
      __$AppleSignStateCopyWithImpl<_AppleSignState>(this, _$identity);
}

abstract class _AppleSignState implements AppleSignState {
  const factory _AppleSignState({@required bool isAppleSignInAvailable}) =
      _$_AppleSignState;

  @override
  bool get isAppleSignInAvailable;
  @override
  _$AppleSignStateCopyWith<_AppleSignState> get copyWith;
}
