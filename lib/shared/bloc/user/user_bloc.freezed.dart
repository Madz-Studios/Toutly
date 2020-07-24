// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserEventTearOff {
  const _$UserEventTearOff();

  UserEventNameChanged nameChanged({@required String name}) {
    return UserEventNameChanged(
      name: name,
    );
  }

  UserEventLocationChanged locationChanged({@required String location}) {
    return UserEventLocationChanged(
      location: location,
    );
  }

  UserEventUpdateCurrentLoggedInUserProfilePicture
      updateCurrentLoggedInUserProfilePicture(
          {@required PickedFile pickedFile, @required UserModel userModel}) {
    return UserEventUpdateCurrentLoggedInUserProfilePicture(
      pickedFile: pickedFile,
      userModel: userModel,
    );
  }

  UserEventUpdateCurrentLoggedInUser updateCurrentLoggedInUser(
      UserModel userModel) {
    return UserEventUpdateCurrentLoggedInUser(
      userModel,
    );
  }

  UserEventGetCurrentLoggedInUser getCurrentLoggedInUser() {
    return const UserEventGetCurrentLoggedInUser();
  }
}

// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

mixin _$UserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result locationChanged(String location),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            PickedFile pickedFile, UserModel userModel),
    @required Result updateCurrentLoggedInUser(UserModel userModel),
    @required Result getCurrentLoggedInUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result locationChanged(String location),
    Result updateCurrentLoggedInUserProfilePicture(
        PickedFile pickedFile, UserModel userModel),
    Result updateCurrentLoggedInUser(UserModel userModel),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(UserEventNameChanged value),
    @required Result locationChanged(UserEventLocationChanged value),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            UserEventUpdateCurrentLoggedInUserProfilePicture value),
    @required
        Result updateCurrentLoggedInUser(
            UserEventUpdateCurrentLoggedInUser value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(UserEventNameChanged value),
    Result locationChanged(UserEventLocationChanged value),
    Result updateCurrentLoggedInUserProfilePicture(
        UserEventUpdateCurrentLoggedInUserProfilePicture value),
    Result updateCurrentLoggedInUser(UserEventUpdateCurrentLoggedInUser value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  });
}

abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

abstract class $UserEventNameChangedCopyWith<$Res> {
  factory $UserEventNameChangedCopyWith(UserEventNameChanged value,
          $Res Function(UserEventNameChanged) then) =
      _$UserEventNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$UserEventNameChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventNameChangedCopyWith<$Res> {
  _$UserEventNameChangedCopyWithImpl(
      UserEventNameChanged _value, $Res Function(UserEventNameChanged) _then)
      : super(_value, (v) => _then(v as UserEventNameChanged));

  @override
  UserEventNameChanged get _value => super._value as UserEventNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(UserEventNameChanged(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$UserEventNameChanged implements UserEventNameChanged {
  const _$UserEventNameChanged({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'UserEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEventNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $UserEventNameChangedCopyWith<UserEventNameChanged> get copyWith =>
      _$UserEventNameChangedCopyWithImpl<UserEventNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result locationChanged(String location),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            PickedFile pickedFile, UserModel userModel),
    @required Result updateCurrentLoggedInUser(UserModel userModel),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result locationChanged(String location),
    Result updateCurrentLoggedInUserProfilePicture(
        PickedFile pickedFile, UserModel userModel),
    Result updateCurrentLoggedInUser(UserModel userModel),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(UserEventNameChanged value),
    @required Result locationChanged(UserEventLocationChanged value),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            UserEventUpdateCurrentLoggedInUserProfilePicture value),
    @required
        Result updateCurrentLoggedInUser(
            UserEventUpdateCurrentLoggedInUser value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(UserEventNameChanged value),
    Result locationChanged(UserEventLocationChanged value),
    Result updateCurrentLoggedInUserProfilePicture(
        UserEventUpdateCurrentLoggedInUserProfilePicture value),
    Result updateCurrentLoggedInUser(UserEventUpdateCurrentLoggedInUser value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class UserEventNameChanged implements UserEvent {
  const factory UserEventNameChanged({@required String name}) =
      _$UserEventNameChanged;

  String get name;
  $UserEventNameChangedCopyWith<UserEventNameChanged> get copyWith;
}

abstract class $UserEventLocationChangedCopyWith<$Res> {
  factory $UserEventLocationChangedCopyWith(UserEventLocationChanged value,
          $Res Function(UserEventLocationChanged) then) =
      _$UserEventLocationChangedCopyWithImpl<$Res>;
  $Res call({String location});
}

class _$UserEventLocationChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventLocationChangedCopyWith<$Res> {
  _$UserEventLocationChangedCopyWithImpl(UserEventLocationChanged _value,
      $Res Function(UserEventLocationChanged) _then)
      : super(_value, (v) => _then(v as UserEventLocationChanged));

  @override
  UserEventLocationChanged get _value =>
      super._value as UserEventLocationChanged;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(UserEventLocationChanged(
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

class _$UserEventLocationChanged implements UserEventLocationChanged {
  const _$UserEventLocationChanged({@required this.location})
      : assert(location != null);

  @override
  final String location;

  @override
  String toString() {
    return 'UserEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEventLocationChanged &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $UserEventLocationChangedCopyWith<UserEventLocationChanged> get copyWith =>
      _$UserEventLocationChangedCopyWithImpl<UserEventLocationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result locationChanged(String location),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            PickedFile pickedFile, UserModel userModel),
    @required Result updateCurrentLoggedInUser(UserModel userModel),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result locationChanged(String location),
    Result updateCurrentLoggedInUserProfilePicture(
        PickedFile pickedFile, UserModel userModel),
    Result updateCurrentLoggedInUser(UserModel userModel),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(UserEventNameChanged value),
    @required Result locationChanged(UserEventLocationChanged value),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            UserEventUpdateCurrentLoggedInUserProfilePicture value),
    @required
        Result updateCurrentLoggedInUser(
            UserEventUpdateCurrentLoggedInUser value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(UserEventNameChanged value),
    Result locationChanged(UserEventLocationChanged value),
    Result updateCurrentLoggedInUserProfilePicture(
        UserEventUpdateCurrentLoggedInUserProfilePicture value),
    Result updateCurrentLoggedInUser(UserEventUpdateCurrentLoggedInUser value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class UserEventLocationChanged implements UserEvent {
  const factory UserEventLocationChanged({@required String location}) =
      _$UserEventLocationChanged;

  String get location;
  $UserEventLocationChangedCopyWith<UserEventLocationChanged> get copyWith;
}

abstract class $UserEventUpdateCurrentLoggedInUserProfilePictureCopyWith<$Res> {
  factory $UserEventUpdateCurrentLoggedInUserProfilePictureCopyWith(
          UserEventUpdateCurrentLoggedInUserProfilePicture value,
          $Res Function(UserEventUpdateCurrentLoggedInUserProfilePicture)
              then) =
      _$UserEventUpdateCurrentLoggedInUserProfilePictureCopyWithImpl<$Res>;
  $Res call({PickedFile pickedFile, UserModel userModel});
}

class _$UserEventUpdateCurrentLoggedInUserProfilePictureCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventUpdateCurrentLoggedInUserProfilePictureCopyWith<$Res> {
  _$UserEventUpdateCurrentLoggedInUserProfilePictureCopyWithImpl(
      UserEventUpdateCurrentLoggedInUserProfilePicture _value,
      $Res Function(UserEventUpdateCurrentLoggedInUserProfilePicture) _then)
      : super(
            _value,
            (v) =>
                _then(v as UserEventUpdateCurrentLoggedInUserProfilePicture));

  @override
  UserEventUpdateCurrentLoggedInUserProfilePicture get _value =>
      super._value as UserEventUpdateCurrentLoggedInUserProfilePicture;

  @override
  $Res call({
    Object pickedFile = freezed,
    Object userModel = freezed,
  }) {
    return _then(UserEventUpdateCurrentLoggedInUserProfilePicture(
      pickedFile:
          pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

class _$UserEventUpdateCurrentLoggedInUserProfilePicture
    implements UserEventUpdateCurrentLoggedInUserProfilePicture {
  const _$UserEventUpdateCurrentLoggedInUserProfilePicture(
      {@required this.pickedFile, @required this.userModel})
      : assert(pickedFile != null),
        assert(userModel != null);

  @override
  final PickedFile pickedFile;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserEvent.updateCurrentLoggedInUserProfilePicture(pickedFile: $pickedFile, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEventUpdateCurrentLoggedInUserProfilePicture &&
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
  $UserEventUpdateCurrentLoggedInUserProfilePictureCopyWith<
          UserEventUpdateCurrentLoggedInUserProfilePicture>
      get copyWith =>
          _$UserEventUpdateCurrentLoggedInUserProfilePictureCopyWithImpl<
                  UserEventUpdateCurrentLoggedInUserProfilePicture>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result locationChanged(String location),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            PickedFile pickedFile, UserModel userModel),
    @required Result updateCurrentLoggedInUser(UserModel userModel),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return updateCurrentLoggedInUserProfilePicture(pickedFile, userModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result locationChanged(String location),
    Result updateCurrentLoggedInUserProfilePicture(
        PickedFile pickedFile, UserModel userModel),
    Result updateCurrentLoggedInUser(UserModel userModel),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentLoggedInUserProfilePicture != null) {
      return updateCurrentLoggedInUserProfilePicture(pickedFile, userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(UserEventNameChanged value),
    @required Result locationChanged(UserEventLocationChanged value),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            UserEventUpdateCurrentLoggedInUserProfilePicture value),
    @required
        Result updateCurrentLoggedInUser(
            UserEventUpdateCurrentLoggedInUser value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return updateCurrentLoggedInUserProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(UserEventNameChanged value),
    Result locationChanged(UserEventLocationChanged value),
    Result updateCurrentLoggedInUserProfilePicture(
        UserEventUpdateCurrentLoggedInUserProfilePicture value),
    Result updateCurrentLoggedInUser(UserEventUpdateCurrentLoggedInUser value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentLoggedInUserProfilePicture != null) {
      return updateCurrentLoggedInUserProfilePicture(this);
    }
    return orElse();
  }
}

abstract class UserEventUpdateCurrentLoggedInUserProfilePicture
    implements UserEvent {
  const factory UserEventUpdateCurrentLoggedInUserProfilePicture(
          {@required PickedFile pickedFile, @required UserModel userModel}) =
      _$UserEventUpdateCurrentLoggedInUserProfilePicture;

  PickedFile get pickedFile;
  UserModel get userModel;
  $UserEventUpdateCurrentLoggedInUserProfilePictureCopyWith<
      UserEventUpdateCurrentLoggedInUserProfilePicture> get copyWith;
}

abstract class $UserEventUpdateCurrentLoggedInUserCopyWith<$Res> {
  factory $UserEventUpdateCurrentLoggedInUserCopyWith(
          UserEventUpdateCurrentLoggedInUser value,
          $Res Function(UserEventUpdateCurrentLoggedInUser) then) =
      _$UserEventUpdateCurrentLoggedInUserCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

class _$UserEventUpdateCurrentLoggedInUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventUpdateCurrentLoggedInUserCopyWith<$Res> {
  _$UserEventUpdateCurrentLoggedInUserCopyWithImpl(
      UserEventUpdateCurrentLoggedInUser _value,
      $Res Function(UserEventUpdateCurrentLoggedInUser) _then)
      : super(_value, (v) => _then(v as UserEventUpdateCurrentLoggedInUser));

  @override
  UserEventUpdateCurrentLoggedInUser get _value =>
      super._value as UserEventUpdateCurrentLoggedInUser;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(UserEventUpdateCurrentLoggedInUser(
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

class _$UserEventUpdateCurrentLoggedInUser
    implements UserEventUpdateCurrentLoggedInUser {
  const _$UserEventUpdateCurrentLoggedInUser(this.userModel)
      : assert(userModel != null);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserEvent.updateCurrentLoggedInUser(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEventUpdateCurrentLoggedInUser &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userModel);

  @override
  $UserEventUpdateCurrentLoggedInUserCopyWith<
          UserEventUpdateCurrentLoggedInUser>
      get copyWith => _$UserEventUpdateCurrentLoggedInUserCopyWithImpl<
          UserEventUpdateCurrentLoggedInUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result locationChanged(String location),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            PickedFile pickedFile, UserModel userModel),
    @required Result updateCurrentLoggedInUser(UserModel userModel),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return updateCurrentLoggedInUser(userModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result locationChanged(String location),
    Result updateCurrentLoggedInUserProfilePicture(
        PickedFile pickedFile, UserModel userModel),
    Result updateCurrentLoggedInUser(UserModel userModel),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentLoggedInUser != null) {
      return updateCurrentLoggedInUser(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(UserEventNameChanged value),
    @required Result locationChanged(UserEventLocationChanged value),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            UserEventUpdateCurrentLoggedInUserProfilePicture value),
    @required
        Result updateCurrentLoggedInUser(
            UserEventUpdateCurrentLoggedInUser value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return updateCurrentLoggedInUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(UserEventNameChanged value),
    Result locationChanged(UserEventLocationChanged value),
    Result updateCurrentLoggedInUserProfilePicture(
        UserEventUpdateCurrentLoggedInUserProfilePicture value),
    Result updateCurrentLoggedInUser(UserEventUpdateCurrentLoggedInUser value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentLoggedInUser != null) {
      return updateCurrentLoggedInUser(this);
    }
    return orElse();
  }
}

abstract class UserEventUpdateCurrentLoggedInUser implements UserEvent {
  const factory UserEventUpdateCurrentLoggedInUser(UserModel userModel) =
      _$UserEventUpdateCurrentLoggedInUser;

  UserModel get userModel;
  $UserEventUpdateCurrentLoggedInUserCopyWith<
      UserEventUpdateCurrentLoggedInUser> get copyWith;
}

abstract class $UserEventGetCurrentLoggedInUserCopyWith<$Res> {
  factory $UserEventGetCurrentLoggedInUserCopyWith(
          UserEventGetCurrentLoggedInUser value,
          $Res Function(UserEventGetCurrentLoggedInUser) then) =
      _$UserEventGetCurrentLoggedInUserCopyWithImpl<$Res>;
}

class _$UserEventGetCurrentLoggedInUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventGetCurrentLoggedInUserCopyWith<$Res> {
  _$UserEventGetCurrentLoggedInUserCopyWithImpl(
      UserEventGetCurrentLoggedInUser _value,
      $Res Function(UserEventGetCurrentLoggedInUser) _then)
      : super(_value, (v) => _then(v as UserEventGetCurrentLoggedInUser));

  @override
  UserEventGetCurrentLoggedInUser get _value =>
      super._value as UserEventGetCurrentLoggedInUser;
}

class _$UserEventGetCurrentLoggedInUser
    implements UserEventGetCurrentLoggedInUser {
  const _$UserEventGetCurrentLoggedInUser();

  @override
  String toString() {
    return 'UserEvent.getCurrentLoggedInUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserEventGetCurrentLoggedInUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result locationChanged(String location),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            PickedFile pickedFile, UserModel userModel),
    @required Result updateCurrentLoggedInUser(UserModel userModel),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return getCurrentLoggedInUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result locationChanged(String location),
    Result updateCurrentLoggedInUserProfilePicture(
        PickedFile pickedFile, UserModel userModel),
    Result updateCurrentLoggedInUser(UserModel userModel),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentLoggedInUser != null) {
      return getCurrentLoggedInUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(UserEventNameChanged value),
    @required Result locationChanged(UserEventLocationChanged value),
    @required
        Result updateCurrentLoggedInUserProfilePicture(
            UserEventUpdateCurrentLoggedInUserProfilePicture value),
    @required
        Result updateCurrentLoggedInUser(
            UserEventUpdateCurrentLoggedInUser value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(nameChanged != null);
    assert(locationChanged != null);
    assert(updateCurrentLoggedInUserProfilePicture != null);
    assert(updateCurrentLoggedInUser != null);
    assert(getCurrentLoggedInUser != null);
    return getCurrentLoggedInUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(UserEventNameChanged value),
    Result locationChanged(UserEventLocationChanged value),
    Result updateCurrentLoggedInUserProfilePicture(
        UserEventUpdateCurrentLoggedInUserProfilePicture value),
    Result updateCurrentLoggedInUser(UserEventUpdateCurrentLoggedInUser value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentLoggedInUser != null) {
      return getCurrentLoggedInUser(this);
    }
    return orElse();
  }
}

abstract class UserEventGetCurrentLoggedInUser implements UserEvent {
  const factory UserEventGetCurrentLoggedInUser() =
      _$UserEventGetCurrentLoggedInUser;
}

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
