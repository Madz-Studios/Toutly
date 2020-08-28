// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'privacy_services_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrivacyServicesStateTearOff {
  const _$PrivacyServicesStateTearOff();

// ignore: unused_element
  _PrivacyServicesState call({@required bool isLocationServiceEnabled}) {
    return _PrivacyServicesState(
      isLocationServiceEnabled: isLocationServiceEnabled,
    );
  }
}

// ignore: unused_element
const $PrivacyServicesState = _$PrivacyServicesStateTearOff();

mixin _$PrivacyServicesState {
  bool get isLocationServiceEnabled;

  $PrivacyServicesStateCopyWith<PrivacyServicesState> get copyWith;
}

abstract class $PrivacyServicesStateCopyWith<$Res> {
  factory $PrivacyServicesStateCopyWith(PrivacyServicesState value,
          $Res Function(PrivacyServicesState) then) =
      _$PrivacyServicesStateCopyWithImpl<$Res>;
  $Res call({bool isLocationServiceEnabled});
}

class _$PrivacyServicesStateCopyWithImpl<$Res>
    implements $PrivacyServicesStateCopyWith<$Res> {
  _$PrivacyServicesStateCopyWithImpl(this._value, this._then);

  final PrivacyServicesState _value;
  // ignore: unused_field
  final $Res Function(PrivacyServicesState) _then;

  @override
  $Res call({
    Object isLocationServiceEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isLocationServiceEnabled: isLocationServiceEnabled == freezed
          ? _value.isLocationServiceEnabled
          : isLocationServiceEnabled as bool,
    ));
  }
}

abstract class _$PrivacyServicesStateCopyWith<$Res>
    implements $PrivacyServicesStateCopyWith<$Res> {
  factory _$PrivacyServicesStateCopyWith(_PrivacyServicesState value,
          $Res Function(_PrivacyServicesState) then) =
      __$PrivacyServicesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLocationServiceEnabled});
}

class __$PrivacyServicesStateCopyWithImpl<$Res>
    extends _$PrivacyServicesStateCopyWithImpl<$Res>
    implements _$PrivacyServicesStateCopyWith<$Res> {
  __$PrivacyServicesStateCopyWithImpl(
      _PrivacyServicesState _value, $Res Function(_PrivacyServicesState) _then)
      : super(_value, (v) => _then(v as _PrivacyServicesState));

  @override
  _PrivacyServicesState get _value => super._value as _PrivacyServicesState;

  @override
  $Res call({
    Object isLocationServiceEnabled = freezed,
  }) {
    return _then(_PrivacyServicesState(
      isLocationServiceEnabled: isLocationServiceEnabled == freezed
          ? _value.isLocationServiceEnabled
          : isLocationServiceEnabled as bool,
    ));
  }
}

class _$_PrivacyServicesState implements _PrivacyServicesState {
  const _$_PrivacyServicesState({@required this.isLocationServiceEnabled})
      : assert(isLocationServiceEnabled != null);

  @override
  final bool isLocationServiceEnabled;

  @override
  String toString() {
    return 'PrivacyServicesState(isLocationServiceEnabled: $isLocationServiceEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrivacyServicesState &&
            (identical(
                    other.isLocationServiceEnabled, isLocationServiceEnabled) ||
                const DeepCollectionEquality().equals(
                    other.isLocationServiceEnabled, isLocationServiceEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLocationServiceEnabled);

  @override
  _$PrivacyServicesStateCopyWith<_PrivacyServicesState> get copyWith =>
      __$PrivacyServicesStateCopyWithImpl<_PrivacyServicesState>(
          this, _$identity);
}

abstract class _PrivacyServicesState implements PrivacyServicesState {
  const factory _PrivacyServicesState(
      {@required bool isLocationServiceEnabled}) = _$_PrivacyServicesState;

  @override
  bool get isLocationServiceEnabled;
  @override
  _$PrivacyServicesStateCopyWith<_PrivacyServicesState> get copyWith;
}
