// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cloud_function_call_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CloudFunctionCallStateTearOff {
  const _$CloudFunctionCallStateTearOff();

// ignore: unused_element
  _CloudFunctionCallState call(
      {@required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _CloudFunctionCallState(
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $CloudFunctionCallState = _$CloudFunctionCallStateTearOff();

mixin _$CloudFunctionCallState {
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $CloudFunctionCallStateCopyWith<CloudFunctionCallState> get copyWith;
}

abstract class $CloudFunctionCallStateCopyWith<$Res> {
  factory $CloudFunctionCallStateCopyWith(CloudFunctionCallState value,
          $Res Function(CloudFunctionCallState) then) =
      _$CloudFunctionCallStateCopyWithImpl<$Res>;
  $Res call({bool isSubmitting, bool isSuccess, bool isFailure, String info});
}

class _$CloudFunctionCallStateCopyWithImpl<$Res>
    implements $CloudFunctionCallStateCopyWith<$Res> {
  _$CloudFunctionCallStateCopyWithImpl(this._value, this._then);

  final CloudFunctionCallState _value;
  // ignore: unused_field
  final $Res Function(CloudFunctionCallState) _then;

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

abstract class _$CloudFunctionCallStateCopyWith<$Res>
    implements $CloudFunctionCallStateCopyWith<$Res> {
  factory _$CloudFunctionCallStateCopyWith(_CloudFunctionCallState value,
          $Res Function(_CloudFunctionCallState) then) =
      __$CloudFunctionCallStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSubmitting, bool isSuccess, bool isFailure, String info});
}

class __$CloudFunctionCallStateCopyWithImpl<$Res>
    extends _$CloudFunctionCallStateCopyWithImpl<$Res>
    implements _$CloudFunctionCallStateCopyWith<$Res> {
  __$CloudFunctionCallStateCopyWithImpl(_CloudFunctionCallState _value,
      $Res Function(_CloudFunctionCallState) _then)
      : super(_value, (v) => _then(v as _CloudFunctionCallState));

  @override
  _CloudFunctionCallState get _value => super._value as _CloudFunctionCallState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_CloudFunctionCallState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_CloudFunctionCallState implements _CloudFunctionCallState {
  const _$_CloudFunctionCallState(
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
    return 'CloudFunctionCallState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CloudFunctionCallState &&
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
  _$CloudFunctionCallStateCopyWith<_CloudFunctionCallState> get copyWith =>
      __$CloudFunctionCallStateCopyWithImpl<_CloudFunctionCallState>(
          this, _$identity);
}

abstract class _CloudFunctionCallState implements CloudFunctionCallState {
  const factory _CloudFunctionCallState(
      {@required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_CloudFunctionCallState;

  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$CloudFunctionCallStateCopyWith<_CloudFunctionCallState> get copyWith;
}
