// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {@required UserModel userModel,
      @required bool isNameValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _UserState(
      userModel: userModel,
      isNameValid: isNameValid,
      isLocationValid: isLocationValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  UserModel get userModel;
  bool get isNameValid;
  bool get isLocationValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $UserStateCopyWith<UserState> get copyWith;
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel userModel,
      bool isNameValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object userModel = freezed,
    Object isNameValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
      isNameValid:
          isNameValid == freezed ? _value.isNameValid : isNameValid as bool,
      isLocationValid: isLocationValid == freezed
          ? _value.isLocationValid
          : isLocationValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel userModel,
      bool isNameValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object userModel = freezed,
    Object isNameValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_UserState(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
      isNameValid:
          isNameValid == freezed ? _value.isNameValid : isNameValid as bool,
      isLocationValid: isLocationValid == freezed
          ? _value.isLocationValid
          : isLocationValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_UserState extends _UserState {
  const _$_UserState(
      {@required this.userModel,
      @required this.isNameValid,
      @required this.isLocationValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(userModel != null),
        assert(isNameValid != null),
        assert(isLocationValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final UserModel userModel;
  @override
  final bool isNameValid;
  @override
  final bool isLocationValid;
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
    return 'UserState(userModel: $userModel, isNameValid: $isNameValid, isLocationValid: $isLocationValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)) &&
            (identical(other.isNameValid, isNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isNameValid, isNameValid)) &&
            (identical(other.isLocationValid, isLocationValid) ||
                const DeepCollectionEquality()
                    .equals(other.isLocationValid, isLocationValid)) &&
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
      const DeepCollectionEquality().hash(userModel) ^
      const DeepCollectionEquality().hash(isNameValid) ^
      const DeepCollectionEquality().hash(isLocationValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState extends UserState {
  const _UserState._() : super._();
  const factory _UserState(
      {@required UserModel userModel,
      @required bool isNameValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_UserState;

  @override
  UserModel get userModel;
  @override
  bool get isNameValid;
  @override
  bool get isLocationValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$UserStateCopyWith<_UserState> get copyWith;
}
