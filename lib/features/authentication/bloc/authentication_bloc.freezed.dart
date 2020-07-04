// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  AuthenticationEventAuthCheckRequested authCheckRequested() {
    return const AuthenticationEventAuthCheckRequested();
  }

  AuthenticationEventSignedIn signedIn() {
    return const AuthenticationEventSignedIn();
  }

  AuthenticationEventSignedOut signedOut() {
    return const AuthenticationEventSignedOut();
  }
}

// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedIn(),
    @required Result signedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedIn(),
    Result signedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    @required Result signedIn(AuthenticationEventSignedIn value),
    @required Result signedOut(AuthenticationEventSignedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    Result signedIn(AuthenticationEventSignedIn value),
    Result signedOut(AuthenticationEventSignedOut value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

abstract class $AuthenticationEventAuthCheckRequestedCopyWith<$Res> {
  factory $AuthenticationEventAuthCheckRequestedCopyWith(
          AuthenticationEventAuthCheckRequested value,
          $Res Function(AuthenticationEventAuthCheckRequested) then) =
      _$AuthenticationEventAuthCheckRequestedCopyWithImpl<$Res>;
}

class _$AuthenticationEventAuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventAuthCheckRequestedCopyWith<$Res> {
  _$AuthenticationEventAuthCheckRequestedCopyWithImpl(
      AuthenticationEventAuthCheckRequested _value,
      $Res Function(AuthenticationEventAuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthenticationEventAuthCheckRequested));

  @override
  AuthenticationEventAuthCheckRequested get _value =>
      super._value as AuthenticationEventAuthCheckRequested;
}

class _$AuthenticationEventAuthCheckRequested
    implements AuthenticationEventAuthCheckRequested {
  const _$AuthenticationEventAuthCheckRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationEventAuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedIn(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedIn(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    @required Result signedIn(AuthenticationEventSignedIn value),
    @required Result signedOut(AuthenticationEventSignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    Result signedIn(AuthenticationEventSignedIn value),
    Result signedOut(AuthenticationEventSignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEventAuthCheckRequested
    implements AuthenticationEvent {
  const factory AuthenticationEventAuthCheckRequested() =
      _$AuthenticationEventAuthCheckRequested;
}

abstract class $AuthenticationEventSignedInCopyWith<$Res> {
  factory $AuthenticationEventSignedInCopyWith(
          AuthenticationEventSignedIn value,
          $Res Function(AuthenticationEventSignedIn) then) =
      _$AuthenticationEventSignedInCopyWithImpl<$Res>;
}

class _$AuthenticationEventSignedInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventSignedInCopyWith<$Res> {
  _$AuthenticationEventSignedInCopyWithImpl(AuthenticationEventSignedIn _value,
      $Res Function(AuthenticationEventSignedIn) _then)
      : super(_value, (v) => _then(v as AuthenticationEventSignedIn));

  @override
  AuthenticationEventSignedIn get _value =>
      super._value as AuthenticationEventSignedIn;
}

class _$AuthenticationEventSignedIn implements AuthenticationEventSignedIn {
  const _$AuthenticationEventSignedIn();

  @override
  String toString() {
    return 'AuthenticationEvent.signedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationEventSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedIn(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedIn(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    @required Result signedIn(AuthenticationEventSignedIn value),
    @required Result signedOut(AuthenticationEventSignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    Result signedIn(AuthenticationEventSignedIn value),
    Result signedOut(AuthenticationEventSignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEventSignedIn implements AuthenticationEvent {
  const factory AuthenticationEventSignedIn() = _$AuthenticationEventSignedIn;
}

abstract class $AuthenticationEventSignedOutCopyWith<$Res> {
  factory $AuthenticationEventSignedOutCopyWith(
          AuthenticationEventSignedOut value,
          $Res Function(AuthenticationEventSignedOut) then) =
      _$AuthenticationEventSignedOutCopyWithImpl<$Res>;
}

class _$AuthenticationEventSignedOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventSignedOutCopyWith<$Res> {
  _$AuthenticationEventSignedOutCopyWithImpl(
      AuthenticationEventSignedOut _value,
      $Res Function(AuthenticationEventSignedOut) _then)
      : super(_value, (v) => _then(v as AuthenticationEventSignedOut));

  @override
  AuthenticationEventSignedOut get _value =>
      super._value as AuthenticationEventSignedOut;
}

class _$AuthenticationEventSignedOut implements AuthenticationEventSignedOut {
  const _$AuthenticationEventSignedOut();

  @override
  String toString() {
    return 'AuthenticationEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationEventSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedIn(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedIn(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    @required Result signedIn(AuthenticationEventSignedIn value),
    @required Result signedOut(AuthenticationEventSignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthenticationEventAuthCheckRequested value),
    Result signedIn(AuthenticationEventSignedIn value),
    Result signedOut(AuthenticationEventSignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEventSignedOut implements AuthenticationEvent {
  const factory AuthenticationEventSignedOut() = _$AuthenticationEventSignedOut;
}

class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {@required bool isAppJustStarted,
      @required bool isAuthenticated,
      @required String info}) {
    return _AuthenticationState(
      isAppJustStarted: isAppJustStarted,
      isAuthenticated: isAuthenticated,
      info: info,
    );
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  bool get isAppJustStarted;
  bool get isAuthenticated;
  String get info;

  $AuthenticationStateCopyWith<AuthenticationState> get copyWith;
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({bool isAppJustStarted, bool isAuthenticated, String info});
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object isAppJustStarted = freezed,
    Object isAuthenticated = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      isAppJustStarted: isAppJustStarted == freezed
          ? _value.isAppJustStarted
          : isAppJustStarted as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAppJustStarted, bool isAuthenticated, String info});
}

class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object isAppJustStarted = freezed,
    Object isAuthenticated = freezed,
    Object info = freezed,
  }) {
    return _then(_AuthenticationState(
      isAppJustStarted: isAppJustStarted == freezed
          ? _value.isAppJustStarted
          : isAppJustStarted as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_AuthenticationState extends _AuthenticationState {
  const _$_AuthenticationState(
      {@required this.isAppJustStarted,
      @required this.isAuthenticated,
      @required this.info})
      : assert(isAppJustStarted != null),
        assert(isAuthenticated != null),
        assert(info != null),
        super._();

  @override
  final bool isAppJustStarted;
  @override
  final bool isAuthenticated;
  @override
  final String info;

  @override
  String toString() {
    return 'AuthenticationState(isAppJustStarted: $isAppJustStarted, isAuthenticated: $isAuthenticated, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.isAppJustStarted, isAppJustStarted) ||
                const DeepCollectionEquality()
                    .equals(other.isAppJustStarted, isAppJustStarted)) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAppJustStarted) ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState extends AuthenticationState {
  const _AuthenticationState._() : super._();
  const factory _AuthenticationState(
      {@required bool isAppJustStarted,
      @required bool isAuthenticated,
      @required String info}) = _$_AuthenticationState;

  @override
  bool get isAppJustStarted;
  @override
  bool get isAuthenticated;
  @override
  String get info;
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith;
}
