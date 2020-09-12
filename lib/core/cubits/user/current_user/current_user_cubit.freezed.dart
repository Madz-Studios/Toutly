// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurrentUserStateTearOff {
  const _$CurrentUserStateTearOff();

// ignore: unused_element
  _CurrentUserState call(
      {UserModel currentUserModel,
      @required bool isAnonymous,
      @required bool isNameValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _CurrentUserState(
      currentUserModel: currentUserModel,
      isAnonymous: isAnonymous,
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
const $CurrentUserState = _$CurrentUserStateTearOff();

mixin _$CurrentUserState {
  UserModel get currentUserModel;
  bool get isAnonymous;
  bool get isNameValid;
  bool get isLocationValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $CurrentUserStateCopyWith<CurrentUserState> get copyWith;
}

abstract class $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserStateCopyWith(
          CurrentUserState value, $Res Function(CurrentUserState) then) =
      _$CurrentUserStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel currentUserModel,
      bool isAnonymous,
      bool isNameValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$CurrentUserStateCopyWithImpl<$Res>
    implements $CurrentUserStateCopyWith<$Res> {
  _$CurrentUserStateCopyWithImpl(this._value, this._then);

  final CurrentUserState _value;
  // ignore: unused_field
  final $Res Function(CurrentUserState) _then;

  @override
  $Res call({
    Object currentUserModel = freezed,
    Object isAnonymous = freezed,
    Object isNameValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      currentUserModel: currentUserModel == freezed
          ? _value.currentUserModel
          : currentUserModel as UserModel,
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
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

abstract class _$CurrentUserStateCopyWith<$Res>
    implements $CurrentUserStateCopyWith<$Res> {
  factory _$CurrentUserStateCopyWith(
          _CurrentUserState value, $Res Function(_CurrentUserState) then) =
      __$CurrentUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel currentUserModel,
      bool isAnonymous,
      bool isNameValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$CurrentUserStateCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res>
    implements _$CurrentUserStateCopyWith<$Res> {
  __$CurrentUserStateCopyWithImpl(
      _CurrentUserState _value, $Res Function(_CurrentUserState) _then)
      : super(_value, (v) => _then(v as _CurrentUserState));

  @override
  _CurrentUserState get _value => super._value as _CurrentUserState;

  @override
  $Res call({
    Object currentUserModel = freezed,
    Object isAnonymous = freezed,
    Object isNameValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_CurrentUserState(
      currentUserModel: currentUserModel == freezed
          ? _value.currentUserModel
          : currentUserModel as UserModel,
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
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

class _$_CurrentUserState extends _CurrentUserState
    with DiagnosticableTreeMixin {
  const _$_CurrentUserState(
      {this.currentUserModel,
      @required this.isAnonymous,
      @required this.isNameValid,
      @required this.isLocationValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isAnonymous != null),
        assert(isNameValid != null),
        assert(isLocationValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final UserModel currentUserModel;
  @override
  final bool isAnonymous;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentUserState(currentUserModel: $currentUserModel, isAnonymous: $isAnonymous, isNameValid: $isNameValid, isLocationValid: $isLocationValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentUserState'))
      ..add(DiagnosticsProperty('currentUserModel', currentUserModel))
      ..add(DiagnosticsProperty('isAnonymous', isAnonymous))
      ..add(DiagnosticsProperty('isNameValid', isNameValid))
      ..add(DiagnosticsProperty('isLocationValid', isLocationValid))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentUserState &&
            (identical(other.currentUserModel, currentUserModel) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserModel, currentUserModel)) &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)) &&
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
      const DeepCollectionEquality().hash(currentUserModel) ^
      const DeepCollectionEquality().hash(isAnonymous) ^
      const DeepCollectionEquality().hash(isNameValid) ^
      const DeepCollectionEquality().hash(isLocationValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$CurrentUserStateCopyWith<_CurrentUserState> get copyWith =>
      __$CurrentUserStateCopyWithImpl<_CurrentUserState>(this, _$identity);
}

abstract class _CurrentUserState extends CurrentUserState {
  const _CurrentUserState._() : super._();
  const factory _CurrentUserState(
      {UserModel currentUserModel,
      @required bool isAnonymous,
      @required bool isNameValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_CurrentUserState;

  @override
  UserModel get currentUserModel;
  @override
  bool get isAnonymous;
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
  _$CurrentUserStateCopyWith<_CurrentUserState> get copyWith;
}
