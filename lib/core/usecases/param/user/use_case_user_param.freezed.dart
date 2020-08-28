// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'use_case_user_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseUserParamEmailTearOff {
  const _$UseCaseUserParamEmailTearOff();

// ignore: unused_element
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

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamEmailInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamEmailInit value),
    @required Result orElse(),
  });

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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String email),
  }) {
    assert(init != null);
    return init(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamEmailInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamEmailInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
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

// ignore: unused_element
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

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String email, String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String email, String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamEmailPasswordInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamEmailPasswordInit value),
    @required Result orElse(),
  });

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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String email, String password),
  }) {
    assert(init != null);
    return init(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String email, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamEmailPasswordInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamEmailPasswordInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
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

// ignore: unused_element
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

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String userId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String userId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamUidInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamUidInit value),
    @required Result orElse(),
  });

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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String userId),
  }) {
    assert(init != null);
    return init(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamUidInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamUidInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseUserParamUidInit implements UseCaseUserParamUserId {
  const factory UseCaseUserParamUidInit(String userId) =
      _$UseCaseUserParamUidInit;

  @override
  String get userId;
  @override
  $UseCaseUserParamUidInitCopyWith<UseCaseUserParamUidInit> get copyWith;
}

class _$UseCaseUserParamUserModelTearOff {
  const _$UseCaseUserParamUserModelTearOff();

// ignore: unused_element
  UseCaseUserParamModelInit init(UserModel userModel) {
    return UseCaseUserParamModelInit(
      userModel,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamUserModel = _$UseCaseUserParamUserModelTearOff();

mixin _$UseCaseUserParamUserModel {
  UserModel get userModel;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserModel userModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserModel userModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamModelInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamModelInit value),
    @required Result orElse(),
  });

  $UseCaseUserParamUserModelCopyWith<UseCaseUserParamUserModel> get copyWith;
}

abstract class $UseCaseUserParamUserModelCopyWith<$Res> {
  factory $UseCaseUserParamUserModelCopyWith(UseCaseUserParamUserModel value,
          $Res Function(UseCaseUserParamUserModel) then) =
      _$UseCaseUserParamUserModelCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

class _$UseCaseUserParamUserModelCopyWithImpl<$Res>
    implements $UseCaseUserParamUserModelCopyWith<$Res> {
  _$UseCaseUserParamUserModelCopyWithImpl(this._value, this._then);

  final UseCaseUserParamUserModel _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamUserModel) _then;

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
    implements $UseCaseUserParamUserModelCopyWith<$Res> {
  factory $UseCaseUserParamModelInitCopyWith(UseCaseUserParamModelInit value,
          $Res Function(UseCaseUserParamModelInit) then) =
      _$UseCaseUserParamModelInitCopyWithImpl<$Res>;
  @override
  $Res call({UserModel userModel});
}

class _$UseCaseUserParamModelInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamUserModelCopyWithImpl<$Res>
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
    return 'UseCaseUserParamUserModel.init(userModel: $userModel)';
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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserModel userModel),
  }) {
    assert(init != null);
    return init(userModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserModel userModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamModelInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamModelInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseUserParamModelInit implements UseCaseUserParamUserModel {
  const factory UseCaseUserParamModelInit(UserModel userModel) =
      _$UseCaseUserParamModelInit;

  @override
  UserModel get userModel;
  @override
  $UseCaseUserParamModelInitCopyWith<UseCaseUserParamModelInit> get copyWith;
}

class _$UseCaseUserParamUserModelWithPickedFileTearOff {
  const _$UseCaseUserParamUserModelWithPickedFileTearOff();

// ignore: unused_element
  UseCaseUserParamUserModelWithPickedFileInit init(
      PickedFile pickedFile, UserModel userModel) {
    return UseCaseUserParamUserModelWithPickedFileInit(
      pickedFile,
      userModel,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamUserModelWithPickedFile =
    _$UseCaseUserParamUserModelWithPickedFileTearOff();

mixin _$UseCaseUserParamUserModelWithPickedFile {
  PickedFile get pickedFile;
  UserModel get userModel;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(PickedFile pickedFile, UserModel userModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(PickedFile pickedFile, UserModel userModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamUserModelWithPickedFileInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamUserModelWithPickedFileInit value),
    @required Result orElse(),
  });

  $UseCaseUserParamUserModelWithPickedFileCopyWith<
      UseCaseUserParamUserModelWithPickedFile> get copyWith;
}

abstract class $UseCaseUserParamUserModelWithPickedFileCopyWith<$Res> {
  factory $UseCaseUserParamUserModelWithPickedFileCopyWith(
          UseCaseUserParamUserModelWithPickedFile value,
          $Res Function(UseCaseUserParamUserModelWithPickedFile) then) =
      _$UseCaseUserParamUserModelWithPickedFileCopyWithImpl<$Res>;
  $Res call({PickedFile pickedFile, UserModel userModel});
}

class _$UseCaseUserParamUserModelWithPickedFileCopyWithImpl<$Res>
    implements $UseCaseUserParamUserModelWithPickedFileCopyWith<$Res> {
  _$UseCaseUserParamUserModelWithPickedFileCopyWithImpl(
      this._value, this._then);

  final UseCaseUserParamUserModelWithPickedFile _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamUserModelWithPickedFile) _then;

  @override
  $Res call({
    Object pickedFile = freezed,
    Object userModel = freezed,
  }) {
    return _then(_value.copyWith(
      pickedFile:
          pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

abstract class $UseCaseUserParamUserModelWithPickedFileInitCopyWith<$Res>
    implements $UseCaseUserParamUserModelWithPickedFileCopyWith<$Res> {
  factory $UseCaseUserParamUserModelWithPickedFileInitCopyWith(
          UseCaseUserParamUserModelWithPickedFileInit value,
          $Res Function(UseCaseUserParamUserModelWithPickedFileInit) then) =
      _$UseCaseUserParamUserModelWithPickedFileInitCopyWithImpl<$Res>;
  @override
  $Res call({PickedFile pickedFile, UserModel userModel});
}

class _$UseCaseUserParamUserModelWithPickedFileInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamUserModelWithPickedFileCopyWithImpl<$Res>
    implements $UseCaseUserParamUserModelWithPickedFileInitCopyWith<$Res> {
  _$UseCaseUserParamUserModelWithPickedFileInitCopyWithImpl(
      UseCaseUserParamUserModelWithPickedFileInit _value,
      $Res Function(UseCaseUserParamUserModelWithPickedFileInit) _then)
      : super(_value,
            (v) => _then(v as UseCaseUserParamUserModelWithPickedFileInit));

  @override
  UseCaseUserParamUserModelWithPickedFileInit get _value =>
      super._value as UseCaseUserParamUserModelWithPickedFileInit;

  @override
  $Res call({
    Object pickedFile = freezed,
    Object userModel = freezed,
  }) {
    return _then(UseCaseUserParamUserModelWithPickedFileInit(
      pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

class _$UseCaseUserParamUserModelWithPickedFileInit
    implements UseCaseUserParamUserModelWithPickedFileInit {
  const _$UseCaseUserParamUserModelWithPickedFileInit(
      this.pickedFile, this.userModel)
      : assert(pickedFile != null),
        assert(userModel != null);

  @override
  final PickedFile pickedFile;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UseCaseUserParamUserModelWithPickedFile.init(pickedFile: $pickedFile, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamUserModelWithPickedFileInit &&
            (identical(other.pickedFile, pickedFile) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFile, pickedFile)) &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pickedFile) ^
      const DeepCollectionEquality().hash(userModel);

  @override
  $UseCaseUserParamUserModelWithPickedFileInitCopyWith<
          UseCaseUserParamUserModelWithPickedFileInit>
      get copyWith => _$UseCaseUserParamUserModelWithPickedFileInitCopyWithImpl<
          UseCaseUserParamUserModelWithPickedFileInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(PickedFile pickedFile, UserModel userModel),
  }) {
    assert(init != null);
    return init(pickedFile, userModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(PickedFile pickedFile, UserModel userModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(pickedFile, userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamUserModelWithPickedFileInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamUserModelWithPickedFileInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseUserParamUserModelWithPickedFileInit
    implements UseCaseUserParamUserModelWithPickedFile {
  const factory UseCaseUserParamUserModelWithPickedFileInit(
          PickedFile pickedFile, UserModel userModel) =
      _$UseCaseUserParamUserModelWithPickedFileInit;

  @override
  PickedFile get pickedFile;
  @override
  UserModel get userModel;
  @override
  $UseCaseUserParamUserModelWithPickedFileInitCopyWith<
      UseCaseUserParamUserModelWithPickedFileInit> get copyWith;
}

class _$UseCaseUserParamUserModelWithItemIdTearOff {
  const _$UseCaseUserParamUserModelWithItemIdTearOff();

// ignore: unused_element
  UseCaseUserParamUserIdWithItemIdInit init(UserModel user, String itemId) {
    return UseCaseUserParamUserIdWithItemIdInit(
      user,
      itemId,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamUserModelWithItemId =
    _$UseCaseUserParamUserModelWithItemIdTearOff();

mixin _$UseCaseUserParamUserModelWithItemId {
  UserModel get user;
  String get itemId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserModel user, String itemId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserModel user, String itemId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamUserIdWithItemIdInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamUserIdWithItemIdInit value),
    @required Result orElse(),
  });

  $UseCaseUserParamUserModelWithItemIdCopyWith<
      UseCaseUserParamUserModelWithItemId> get copyWith;
}

abstract class $UseCaseUserParamUserModelWithItemIdCopyWith<$Res> {
  factory $UseCaseUserParamUserModelWithItemIdCopyWith(
          UseCaseUserParamUserModelWithItemId value,
          $Res Function(UseCaseUserParamUserModelWithItemId) then) =
      _$UseCaseUserParamUserModelWithItemIdCopyWithImpl<$Res>;
  $Res call({UserModel user, String itemId});
}

class _$UseCaseUserParamUserModelWithItemIdCopyWithImpl<$Res>
    implements $UseCaseUserParamUserModelWithItemIdCopyWith<$Res> {
  _$UseCaseUserParamUserModelWithItemIdCopyWithImpl(this._value, this._then);

  final UseCaseUserParamUserModelWithItemId _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamUserModelWithItemId) _then;

  @override
  $Res call({
    Object user = freezed,
    Object itemId = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserModel,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
    ));
  }
}

abstract class $UseCaseUserParamUserIdWithItemIdInitCopyWith<$Res>
    implements $UseCaseUserParamUserModelWithItemIdCopyWith<$Res> {
  factory $UseCaseUserParamUserIdWithItemIdInitCopyWith(
          UseCaseUserParamUserIdWithItemIdInit value,
          $Res Function(UseCaseUserParamUserIdWithItemIdInit) then) =
      _$UseCaseUserParamUserIdWithItemIdInitCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user, String itemId});
}

class _$UseCaseUserParamUserIdWithItemIdInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamUserModelWithItemIdCopyWithImpl<$Res>
    implements $UseCaseUserParamUserIdWithItemIdInitCopyWith<$Res> {
  _$UseCaseUserParamUserIdWithItemIdInitCopyWithImpl(
      UseCaseUserParamUserIdWithItemIdInit _value,
      $Res Function(UseCaseUserParamUserIdWithItemIdInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamUserIdWithItemIdInit));

  @override
  UseCaseUserParamUserIdWithItemIdInit get _value =>
      super._value as UseCaseUserParamUserIdWithItemIdInit;

  @override
  $Res call({
    Object user = freezed,
    Object itemId = freezed,
  }) {
    return _then(UseCaseUserParamUserIdWithItemIdInit(
      user == freezed ? _value.user : user as UserModel,
      itemId == freezed ? _value.itemId : itemId as String,
    ));
  }
}

class _$UseCaseUserParamUserIdWithItemIdInit
    implements UseCaseUserParamUserIdWithItemIdInit {
  const _$UseCaseUserParamUserIdWithItemIdInit(this.user, this.itemId)
      : assert(user != null),
        assert(itemId != null);

  @override
  final UserModel user;
  @override
  final String itemId;

  @override
  String toString() {
    return 'UseCaseUserParamUserModelWithItemId.init(user: $user, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamUserIdWithItemIdInit &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(itemId);

  @override
  $UseCaseUserParamUserIdWithItemIdInitCopyWith<
          UseCaseUserParamUserIdWithItemIdInit>
      get copyWith => _$UseCaseUserParamUserIdWithItemIdInitCopyWithImpl<
          UseCaseUserParamUserIdWithItemIdInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserModel user, String itemId),
  }) {
    assert(init != null);
    return init(user, itemId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserModel user, String itemId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(user, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamUserIdWithItemIdInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamUserIdWithItemIdInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseUserParamUserIdWithItemIdInit
    implements UseCaseUserParamUserModelWithItemId {
  const factory UseCaseUserParamUserIdWithItemIdInit(
      UserModel user, String itemId) = _$UseCaseUserParamUserIdWithItemIdInit;

  @override
  UserModel get user;
  @override
  String get itemId;
  @override
  $UseCaseUserParamUserIdWithItemIdInitCopyWith<
      UseCaseUserParamUserIdWithItemIdInit> get copyWith;
}

class _$UseCaseUserParamGeoLocationTearOff {
  const _$UseCaseUserParamGeoLocationTearOff();

// ignore: unused_element
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

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(double latitude, double longitude),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(double latitude, double longitude),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamGeoLocationInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamGeoLocationInit value),
    @required Result orElse(),
  });

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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(double latitude, double longitude),
  }) {
    assert(init != null);
    return init(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(double latitude, double longitude),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseUserParamGeoLocationInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserParamGeoLocationInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
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
