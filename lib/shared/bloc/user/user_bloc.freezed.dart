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

  UserEventLoadCurrentFirebaseUser loadCurrentFirebaseUser() {
    return const UserEventLoadCurrentFirebaseUser();
  }
}

// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

mixin _$UserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadCurrentFirebaseUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadCurrentFirebaseUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserEventInitial value),
    @required
        Result loadCurrentFirebaseUser(UserEventLoadCurrentFirebaseUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserEventInitial value),
    Result loadCurrentFirebaseUser(UserEventLoadCurrentFirebaseUser value),
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
    @required Result loadCurrentFirebaseUser(),
  }) {
    assert(initial != null);
    assert(loadCurrentFirebaseUser != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadCurrentFirebaseUser(),
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
        Result loadCurrentFirebaseUser(UserEventLoadCurrentFirebaseUser value),
  }) {
    assert(initial != null);
    assert(loadCurrentFirebaseUser != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserEventInitial value),
    Result loadCurrentFirebaseUser(UserEventLoadCurrentFirebaseUser value),
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

abstract class $UserEventLoadCurrentFirebaseUserCopyWith<$Res> {
  factory $UserEventLoadCurrentFirebaseUserCopyWith(
          UserEventLoadCurrentFirebaseUser value,
          $Res Function(UserEventLoadCurrentFirebaseUser) then) =
      _$UserEventLoadCurrentFirebaseUserCopyWithImpl<$Res>;
}

class _$UserEventLoadCurrentFirebaseUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UserEventLoadCurrentFirebaseUserCopyWith<$Res> {
  _$UserEventLoadCurrentFirebaseUserCopyWithImpl(
      UserEventLoadCurrentFirebaseUser _value,
      $Res Function(UserEventLoadCurrentFirebaseUser) _then)
      : super(_value, (v) => _then(v as UserEventLoadCurrentFirebaseUser));

  @override
  UserEventLoadCurrentFirebaseUser get _value =>
      super._value as UserEventLoadCurrentFirebaseUser;
}

class _$UserEventLoadCurrentFirebaseUser
    implements UserEventLoadCurrentFirebaseUser {
  const _$UserEventLoadCurrentFirebaseUser();

  @override
  String toString() {
    return 'UserEvent.loadCurrentFirebaseUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEventLoadCurrentFirebaseUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadCurrentFirebaseUser(),
  }) {
    assert(initial != null);
    assert(loadCurrentFirebaseUser != null);
    return loadCurrentFirebaseUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadCurrentFirebaseUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCurrentFirebaseUser != null) {
      return loadCurrentFirebaseUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserEventInitial value),
    @required
        Result loadCurrentFirebaseUser(UserEventLoadCurrentFirebaseUser value),
  }) {
    assert(initial != null);
    assert(loadCurrentFirebaseUser != null);
    return loadCurrentFirebaseUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserEventInitial value),
    Result loadCurrentFirebaseUser(UserEventLoadCurrentFirebaseUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCurrentFirebaseUser != null) {
      return loadCurrentFirebaseUser(this);
    }
    return orElse();
  }
}

abstract class UserEventLoadCurrentFirebaseUser implements UserEvent {
  const factory UserEventLoadCurrentFirebaseUser() =
      _$UserEventLoadCurrentFirebaseUser;
}

class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call({FirebaseUser currentFirebaseUser}) {
    return _UserState(
      currentFirebaseUser: currentFirebaseUser,
    );
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  FirebaseUser get currentFirebaseUser;

  $UserStateCopyWith<UserState> get copyWith;
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({FirebaseUser currentFirebaseUser});
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object currentFirebaseUser = freezed,
  }) {
    return _then(_value.copyWith(
      currentFirebaseUser: currentFirebaseUser == freezed
          ? _value.currentFirebaseUser
          : currentFirebaseUser as FirebaseUser,
    ));
  }
}

abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseUser currentFirebaseUser});
}

class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object currentFirebaseUser = freezed,
  }) {
    return _then(_UserState(
      currentFirebaseUser: currentFirebaseUser == freezed
          ? _value.currentFirebaseUser
          : currentFirebaseUser as FirebaseUser,
    ));
  }
}

class _$_UserState implements _UserState {
  const _$_UserState({this.currentFirebaseUser});

  @override
  final FirebaseUser currentFirebaseUser;

  @override
  String toString() {
    return 'UserState(currentFirebaseUser: $currentFirebaseUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.currentFirebaseUser, currentFirebaseUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentFirebaseUser, currentFirebaseUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentFirebaseUser);

  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({FirebaseUser currentFirebaseUser}) = _$_UserState;

  @override
  FirebaseUser get currentFirebaseUser;
  @override
  _$UserStateCopyWith<_UserState> get copyWith;
}
