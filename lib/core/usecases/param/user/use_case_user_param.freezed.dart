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

class _$UseCaseUserParamUserIdTearOff {
  const _$UseCaseUserParamUserIdTearOff();

  UseCaseUserParamUidInit init(String userId) {
    return UseCaseUserParamUidInit(
      userId,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamUserId = _$UseCaseUserParamUserIdTearOff();

mixin _$UseCaseUserParamUserId {
  String get userId;

  $UseCaseUserParamUserIdCopyWith<UseCaseUserParamUserId> get copyWith;
}

abstract class $UseCaseUserParamUserIdCopyWith<$Res> {
  factory $UseCaseUserParamUserIdCopyWith(UseCaseUserParamUserId value,
          $Res Function(UseCaseUserParamUserId) then) =
      _$UseCaseUserParamUserIdCopyWithImpl<$Res>;
  $Res call({String userId});
}

class _$UseCaseUserParamUserIdCopyWithImpl<$Res>
    implements $UseCaseUserParamUserIdCopyWith<$Res> {
  _$UseCaseUserParamUserIdCopyWithImpl(this._value, this._then);

  final UseCaseUserParamUserId _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamUserId) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

abstract class $UseCaseUserParamUidInitCopyWith<$Res>
    implements $UseCaseUserParamUserIdCopyWith<$Res> {
  factory $UseCaseUserParamUidInitCopyWith(UseCaseUserParamUidInit value,
          $Res Function(UseCaseUserParamUidInit) then) =
      _$UseCaseUserParamUidInitCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

class _$UseCaseUserParamUidInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamUserIdCopyWithImpl<$Res>
    implements $UseCaseUserParamUidInitCopyWith<$Res> {
  _$UseCaseUserParamUidInitCopyWithImpl(UseCaseUserParamUidInit _value,
      $Res Function(UseCaseUserParamUidInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamUidInit));

  @override
  UseCaseUserParamUidInit get _value => super._value as UseCaseUserParamUidInit;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(UseCaseUserParamUidInit(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

class _$UseCaseUserParamUidInit implements UseCaseUserParamUidInit {
  const _$UseCaseUserParamUidInit(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'UseCaseUserParamUserId.init(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamUidInit &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $UseCaseUserParamUidInitCopyWith<UseCaseUserParamUidInit> get copyWith =>
      _$UseCaseUserParamUidInitCopyWithImpl<UseCaseUserParamUidInit>(
          this, _$identity);
}

abstract class UseCaseUserParamUidInit implements UseCaseUserParamUserId {
  const factory UseCaseUserParamUidInit(String userId) =
      _$UseCaseUserParamUidInit;

  @override
  String get userId;
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

class _$UseCaseUserParamGeoLocationTearOff {
  const _$UseCaseUserParamGeoLocationTearOff();

  UseCaseUserParamGeoLocationInit init(double latitude, double longitude) {
    return UseCaseUserParamGeoLocationInit(
      latitude,
      longitude,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamGeoLocation = _$UseCaseUserParamGeoLocationTearOff();

mixin _$UseCaseUserParamGeoLocation {
  double get latitude;
  double get longitude;

  $UseCaseUserParamGeoLocationCopyWith<UseCaseUserParamGeoLocation>
      get copyWith;
}

abstract class $UseCaseUserParamGeoLocationCopyWith<$Res> {
  factory $UseCaseUserParamGeoLocationCopyWith(
          UseCaseUserParamGeoLocation value,
          $Res Function(UseCaseUserParamGeoLocation) then) =
      _$UseCaseUserParamGeoLocationCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

class _$UseCaseUserParamGeoLocationCopyWithImpl<$Res>
    implements $UseCaseUserParamGeoLocationCopyWith<$Res> {
  _$UseCaseUserParamGeoLocationCopyWithImpl(this._value, this._then);

  final UseCaseUserParamGeoLocation _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamGeoLocation) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

abstract class $UseCaseUserParamGeoLocationInitCopyWith<$Res>
    implements $UseCaseUserParamGeoLocationCopyWith<$Res> {
  factory $UseCaseUserParamGeoLocationInitCopyWith(
          UseCaseUserParamGeoLocationInit value,
          $Res Function(UseCaseUserParamGeoLocationInit) then) =
      _$UseCaseUserParamGeoLocationInitCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

class _$UseCaseUserParamGeoLocationInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamGeoLocationCopyWithImpl<$Res>
    implements $UseCaseUserParamGeoLocationInitCopyWith<$Res> {
  _$UseCaseUserParamGeoLocationInitCopyWithImpl(
      UseCaseUserParamGeoLocationInit _value,
      $Res Function(UseCaseUserParamGeoLocationInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamGeoLocationInit));

  @override
  UseCaseUserParamGeoLocationInit get _value =>
      super._value as UseCaseUserParamGeoLocationInit;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(UseCaseUserParamGeoLocationInit(
      latitude == freezed ? _value.latitude : latitude as double,
      longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$UseCaseUserParamGeoLocationInit
    implements UseCaseUserParamGeoLocationInit {
  const _$UseCaseUserParamGeoLocationInit(this.latitude, this.longitude)
      : assert(latitude != null),
        assert(longitude != null);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'UseCaseUserParamGeoLocation.init(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamGeoLocationInit &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  $UseCaseUserParamGeoLocationInitCopyWith<UseCaseUserParamGeoLocationInit>
      get copyWith => _$UseCaseUserParamGeoLocationInitCopyWithImpl<
          UseCaseUserParamGeoLocationInit>(this, _$identity);
}

abstract class UseCaseUserParamGeoLocationInit
    implements UseCaseUserParamGeoLocation {
  const factory UseCaseUserParamGeoLocationInit(
      double latitude, double longitude) = _$UseCaseUserParamGeoLocationInit;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  $UseCaseUserParamGeoLocationInitCopyWith<UseCaseUserParamGeoLocationInit>
      get copyWith;
}
