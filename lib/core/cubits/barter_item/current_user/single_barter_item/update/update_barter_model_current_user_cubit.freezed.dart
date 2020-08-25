// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'update_barter_model_current_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UpdateBarterModelCurrentUserStateTearOff {
  const _$UpdateBarterModelCurrentUserStateTearOff();

  _DeleteBarterModelCurrentUserState call(
      {@required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _DeleteBarterModelCurrentUserState(
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $UpdateBarterModelCurrentUserState =
    _$UpdateBarterModelCurrentUserStateTearOff();

mixin _$UpdateBarterModelCurrentUserState {
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $UpdateBarterModelCurrentUserStateCopyWith<UpdateBarterModelCurrentUserState>
      get copyWith;
}

abstract class $UpdateBarterModelCurrentUserStateCopyWith<$Res> {
  factory $UpdateBarterModelCurrentUserStateCopyWith(
          UpdateBarterModelCurrentUserState value,
          $Res Function(UpdateBarterModelCurrentUserState) then) =
      _$UpdateBarterModelCurrentUserStateCopyWithImpl<$Res>;
  $Res call({bool isSubmitting, bool isSuccess, bool isFailure, String info});
}

class _$UpdateBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements $UpdateBarterModelCurrentUserStateCopyWith<$Res> {
  _$UpdateBarterModelCurrentUserStateCopyWithImpl(this._value, this._then);

  final UpdateBarterModelCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(UpdateBarterModelCurrentUserState) _then;

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

abstract class _$DeleteBarterModelCurrentUserStateCopyWith<$Res>
    implements $UpdateBarterModelCurrentUserStateCopyWith<$Res> {
  factory _$DeleteBarterModelCurrentUserStateCopyWith(
          _DeleteBarterModelCurrentUserState value,
          $Res Function(_DeleteBarterModelCurrentUserState) then) =
      __$DeleteBarterModelCurrentUserStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSubmitting, bool isSuccess, bool isFailure, String info});
}

class __$DeleteBarterModelCurrentUserStateCopyWithImpl<$Res>
    extends _$UpdateBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements _$DeleteBarterModelCurrentUserStateCopyWith<$Res> {
  __$DeleteBarterModelCurrentUserStateCopyWithImpl(
      _DeleteBarterModelCurrentUserState _value,
      $Res Function(_DeleteBarterModelCurrentUserState) _then)
      : super(_value, (v) => _then(v as _DeleteBarterModelCurrentUserState));

  @override
  _DeleteBarterModelCurrentUserState get _value =>
      super._value as _DeleteBarterModelCurrentUserState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_DeleteBarterModelCurrentUserState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_DeleteBarterModelCurrentUserState
    implements _DeleteBarterModelCurrentUserState {
  const _$_DeleteBarterModelCurrentUserState(
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
    return 'UpdateBarterModelCurrentUserState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteBarterModelCurrentUserState &&
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
  _$DeleteBarterModelCurrentUserStateCopyWith<
          _DeleteBarterModelCurrentUserState>
      get copyWith => __$DeleteBarterModelCurrentUserStateCopyWithImpl<
          _DeleteBarterModelCurrentUserState>(this, _$identity);
}

abstract class _DeleteBarterModelCurrentUserState
    implements UpdateBarterModelCurrentUserState {
  const factory _DeleteBarterModelCurrentUserState(
      {@required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_DeleteBarterModelCurrentUserState;

  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$DeleteBarterModelCurrentUserStateCopyWith<
      _DeleteBarterModelCurrentUserState> get copyWith;
}
