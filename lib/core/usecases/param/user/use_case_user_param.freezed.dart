// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_user_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseUserParamEmailTearOff {
  const _$UseCaseUserParamEmailTearOff();

  UseCaseUserParamEmailInit init(String email) {
    return UseCaseUserParamEmailInit(
      email,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamEmail = _$UseCaseUserParamEmailTearOff();

mixin _$UseCaseUserParamEmail {
  String get email;

  $UseCaseUserParamEmailCopyWith<UseCaseUserParamEmail> get copyWith;
}

abstract class $UseCaseUserParamEmailCopyWith<$Res> {
  factory $UseCaseUserParamEmailCopyWith(UseCaseUserParamEmail value,
          $Res Function(UseCaseUserParamEmail) then) =
      _$UseCaseUserParamEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$UseCaseUserParamEmailCopyWithImpl<$Res>
    implements $UseCaseUserParamEmailCopyWith<$Res> {
  _$UseCaseUserParamEmailCopyWithImpl(this._value, this._then);

  final UseCaseUserParamEmail _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamEmail) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

abstract class $UseCaseUserParamEmailInitCopyWith<$Res>
    implements $UseCaseUserParamEmailCopyWith<$Res> {
  factory $UseCaseUserParamEmailInitCopyWith(UseCaseUserParamEmailInit value,
          $Res Function(UseCaseUserParamEmailInit) then) =
      _$UseCaseUserParamEmailInitCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

class _$UseCaseUserParamEmailInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamEmailCopyWithImpl<$Res>
    implements $UseCaseUserParamEmailInitCopyWith<$Res> {
  _$UseCaseUserParamEmailInitCopyWithImpl(UseCaseUserParamEmailInit _value,
      $Res Function(UseCaseUserParamEmailInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamEmailInit));

  @override
  UseCaseUserParamEmailInit get _value =>
      super._value as UseCaseUserParamEmailInit;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(UseCaseUserParamEmailInit(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$UseCaseUserParamEmailInit implements UseCaseUserParamEmailInit {
  const _$UseCaseUserParamEmailInit(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'UseCaseUserParamEmail.init(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamEmailInit &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $UseCaseUserParamEmailInitCopyWith<UseCaseUserParamEmailInit> get copyWith =>
      _$UseCaseUserParamEmailInitCopyWithImpl<UseCaseUserParamEmailInit>(
          this, _$identity);
}

abstract class UseCaseUserParamEmailInit implements UseCaseUserParamEmail {
  const factory UseCaseUserParamEmailInit(String email) =
      _$UseCaseUserParamEmailInit;

  @override
  String get email;
  @override
  $UseCaseUserParamEmailInitCopyWith<UseCaseUserParamEmailInit> get copyWith;
}

class _$UseCaseUserParamEmailPasswordTearOff {
  const _$UseCaseUserParamEmailPasswordTearOff();

  UseCaseUserParamEmailPasswordInit init(String email, String password) {
    return UseCaseUserParamEmailPasswordInit(
      email,
      password,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamEmailPassword = _$UseCaseUserParamEmailPasswordTearOff();

mixin _$UseCaseUserParamEmailPassword {
  String get email;
  String get password;

  $UseCaseUserParamEmailPasswordCopyWith<UseCaseUserParamEmailPassword>
      get copyWith;
}

abstract class $UseCaseUserParamEmailPasswordCopyWith<$Res> {
  factory $UseCaseUserParamEmailPasswordCopyWith(
          UseCaseUserParamEmailPassword value,
          $Res Function(UseCaseUserParamEmailPassword) then) =
      _$UseCaseUserParamEmailPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$UseCaseUserParamEmailPasswordCopyWithImpl<$Res>
    implements $UseCaseUserParamEmailPasswordCopyWith<$Res> {
  _$UseCaseUserParamEmailPasswordCopyWithImpl(this._value, this._then);

  final UseCaseUserParamEmailPassword _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamEmailPassword) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class $UseCaseUserParamEmailPasswordInitCopyWith<$Res>
    implements $UseCaseUserParamEmailPasswordCopyWith<$Res> {
  factory $UseCaseUserParamEmailPasswordInitCopyWith(
          UseCaseUserParamEmailPasswordInit value,
          $Res Function(UseCaseUserParamEmailPasswordInit) then) =
      _$UseCaseUserParamEmailPasswordInitCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

class _$UseCaseUserParamEmailPasswordInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamEmailPasswordCopyWithImpl<$Res>
    implements $UseCaseUserParamEmailPasswordInitCopyWith<$Res> {
  _$UseCaseUserParamEmailPasswordInitCopyWithImpl(
      UseCaseUserParamEmailPasswordInit _value,
      $Res Function(UseCaseUserParamEmailPasswordInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamEmailPasswordInit));

  @override
  UseCaseUserParamEmailPasswordInit get _value =>
      super._value as UseCaseUserParamEmailPasswordInit;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(UseCaseUserParamEmailPasswordInit(
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$UseCaseUserParamEmailPasswordInit
    implements UseCaseUserParamEmailPasswordInit {
  const _$UseCaseUserParamEmailPasswordInit(this.email, this.password)
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UseCaseUserParamEmailPassword.init(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamEmailPasswordInit &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  $UseCaseUserParamEmailPasswordInitCopyWith<UseCaseUserParamEmailPasswordInit>
      get copyWith => _$UseCaseUserParamEmailPasswordInitCopyWithImpl<
          UseCaseUserParamEmailPasswordInit>(this, _$identity);
}

abstract class UseCaseUserParamEmailPasswordInit
    implements UseCaseUserParamEmailPassword {
  const factory UseCaseUserParamEmailPasswordInit(
      String email, String password) = _$UseCaseUserParamEmailPasswordInit;

  @override
  String get email;
  @override
  String get password;
  @override
  $UseCaseUserParamEmailPasswordInitCopyWith<UseCaseUserParamEmailPasswordInit>
      get copyWith;
}

class _$UseCaseUserParamUidTearOff {
  const _$UseCaseUserParamUidTearOff();

  UseCaseUserParamUidInit init(String uid) {
    return UseCaseUserParamUidInit(
      uid,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamUid = _$UseCaseUserParamUidTearOff();

mixin _$UseCaseUserParamUid {
  String get uid;

  $UseCaseUserParamUidCopyWith<UseCaseUserParamUid> get copyWith;
}

abstract class $UseCaseUserParamUidCopyWith<$Res> {
  factory $UseCaseUserParamUidCopyWith(
          UseCaseUserParamUid value, $Res Function(UseCaseUserParamUid) then) =
      _$UseCaseUserParamUidCopyWithImpl<$Res>;
  $Res call({String uid});
}

class _$UseCaseUserParamUidCopyWithImpl<$Res>
    implements $UseCaseUserParamUidCopyWith<$Res> {
  _$UseCaseUserParamUidCopyWithImpl(this._value, this._then);

  final UseCaseUserParamUid _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamUid) _then;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

abstract class $UseCaseUserParamUidInitCopyWith<$Res>
    implements $UseCaseUserParamUidCopyWith<$Res> {
  factory $UseCaseUserParamUidInitCopyWith(UseCaseUserParamUidInit value,
          $Res Function(UseCaseUserParamUidInit) then) =
      _$UseCaseUserParamUidInitCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

class _$UseCaseUserParamUidInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamUidCopyWithImpl<$Res>
    implements $UseCaseUserParamUidInitCopyWith<$Res> {
  _$UseCaseUserParamUidInitCopyWithImpl(UseCaseUserParamUidInit _value,
      $Res Function(UseCaseUserParamUidInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamUidInit));

  @override
  UseCaseUserParamUidInit get _value => super._value as UseCaseUserParamUidInit;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(UseCaseUserParamUidInit(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

class _$UseCaseUserParamUidInit implements UseCaseUserParamUidInit {
  const _$UseCaseUserParamUidInit(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'UseCaseUserParamUid.init(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamUidInit &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $UseCaseUserParamUidInitCopyWith<UseCaseUserParamUidInit> get copyWith =>
      _$UseCaseUserParamUidInitCopyWithImpl<UseCaseUserParamUidInit>(
          this, _$identity);
}

abstract class UseCaseUserParamUidInit implements UseCaseUserParamUid {
  const factory UseCaseUserParamUidInit(String uid) = _$UseCaseUserParamUidInit;

  @override
  String get uid;
  @override
  $UseCaseUserParamUidInitCopyWith<UseCaseUserParamUidInit> get copyWith;
}

class _$UseCaseUserParamModelTearOff {
  const _$UseCaseUserParamModelTearOff();

  UseCaseUserParamModelInit init(UserModel userModel) {
    return UseCaseUserParamModelInit(
      userModel,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamModel = _$UseCaseUserParamModelTearOff();

mixin _$UseCaseUserParamModel {
  UserModel get userModel;

  $UseCaseUserParamModelCopyWith<UseCaseUserParamModel> get copyWith;
}

abstract class $UseCaseUserParamModelCopyWith<$Res> {
  factory $UseCaseUserParamModelCopyWith(UseCaseUserParamModel value,
          $Res Function(UseCaseUserParamModel) then) =
      _$UseCaseUserParamModelCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

class _$UseCaseUserParamModelCopyWithImpl<$Res>
    implements $UseCaseUserParamModelCopyWith<$Res> {
  _$UseCaseUserParamModelCopyWithImpl(this._value, this._then);

  final UseCaseUserParamModel _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamModel) _then;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(_value.copyWith(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

abstract class $UseCaseUserParamModelInitCopyWith<$Res>
    implements $UseCaseUserParamModelCopyWith<$Res> {
  factory $UseCaseUserParamModelInitCopyWith(UseCaseUserParamModelInit value,
          $Res Function(UseCaseUserParamModelInit) then) =
      _$UseCaseUserParamModelInitCopyWithImpl<$Res>;
  @override
  $Res call({UserModel userModel});
}

class _$UseCaseUserParamModelInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamModelCopyWithImpl<$Res>
    implements $UseCaseUserParamModelInitCopyWith<$Res> {
  _$UseCaseUserParamModelInitCopyWithImpl(UseCaseUserParamModelInit _value,
      $Res Function(UseCaseUserParamModelInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamModelInit));

  @override
  UseCaseUserParamModelInit get _value =>
      super._value as UseCaseUserParamModelInit;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(UseCaseUserParamModelInit(
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

class _$UseCaseUserParamModelInit implements UseCaseUserParamModelInit {
  const _$UseCaseUserParamModelInit(this.userModel) : assert(userModel != null);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UseCaseUserParamModel.init(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamModelInit &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userModel);

  @override
  $UseCaseUserParamModelInitCopyWith<UseCaseUserParamModelInit> get copyWith =>
      _$UseCaseUserParamModelInitCopyWithImpl<UseCaseUserParamModelInit>(
          this, _$identity);
}

abstract class UseCaseUserParamModelInit implements UseCaseUserParamModel {
  const factory UseCaseUserParamModelInit(UserModel userModel) =
      _$UseCaseUserParamModelInit;

  @override
  UserModel get userModel;
  @override
  $UseCaseUserParamModelInitCopyWith<UseCaseUserParamModelInit> get copyWith;
}
