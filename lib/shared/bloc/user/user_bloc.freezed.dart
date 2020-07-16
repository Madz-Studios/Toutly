// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserEventTearOff {
  const _$UserEventTearOff();

  UserEventInitial initial() {
    return const UserEventInitial();
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
    @required Result initial(),
    @required Result getCurrentLoggedInUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserEventInitial value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserEventInitial value),
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

abstract class $UserEventInitialCopyWith<$Res> {
  factory $UserEventInitialCopyWith(
          UserEventInitial value, $Res Function(UserEventInitial) then) =
      _$UserEventInitialCopyWithImpl<$Res>;
}

class _$UserEventInitialCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventInitialCopyWith<$Res> {
  _$UserEventInitialCopyWithImpl(
      UserEventInitial _value, $Res Function(UserEventInitial) _then)
      : super(_value, (v) => _then(v as UserEventInitial));

  @override
  UserEventInitial get _value => super._value as UserEventInitial;
}

class _$UserEventInitial implements UserEventInitial {
  const _$UserEventInitial();

  @override
  String toString() {
    return 'UserEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(initial != null);
    assert(getCurrentLoggedInUser != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getCurrentLoggedInUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserEventInitial value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(initial != null);
    assert(getCurrentLoggedInUser != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserEventInitial value),
    Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserEventInitial implements UserEvent {
  const factory UserEventInitial() = _$UserEventInitial;
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
    @required Result initial(),
    @required Result getCurrentLoggedInUser(),
  }) {
    assert(initial != null);
    assert(getCurrentLoggedInUser != null);
    return getCurrentLoggedInUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
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
    @required Result initial(UserEventInitial value),
    @required
        Result getCurrentLoggedInUser(UserEventGetCurrentLoggedInUser value),
  }) {
    assert(initial != null);
    assert(getCurrentLoggedInUser != null);
    return getCurrentLoggedInUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserEventInitial value),
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

  _UserState call({UserModel userModel}) {
    return _UserState(
      userModel: userModel,
    );
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  UserModel get userModel;

  $UserStateCopyWith<UserState> get copyWith;
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

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

abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserModel userModel});
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
  }) {
    return _then(_UserState(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

class _$_UserState implements _UserState {
  const _$_UserState({this.userModel});

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserState(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userModel);

  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({UserModel userModel}) = _$_UserState;

  @override
  UserModel get userModel;
  @override
  _$UserStateCopyWith<_UserState> get copyWith;
}
