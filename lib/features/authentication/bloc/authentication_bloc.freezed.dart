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

  AuthenticationStateInitial initial() {
    return const AuthenticationStateInitial();
  }

  AuthenticationStateAuthenticated authenticated() {
    return const AuthenticationStateAuthenticated();
  }

  AuthenticationStateUnauthenticated unauthenticated() {
    return const AuthenticationStateUnauthenticated();
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AuthenticationStateInitial value),
    @required Result authenticated(AuthenticationStateAuthenticated value),
    @required Result unauthenticated(AuthenticationStateUnauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AuthenticationStateInitial value),
    Result authenticated(AuthenticationStateAuthenticated value),
    Result unauthenticated(AuthenticationStateUnauthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class $AuthenticationStateInitialCopyWith<$Res> {
  factory $AuthenticationStateInitialCopyWith(AuthenticationStateInitial value,
          $Res Function(AuthenticationStateInitial) then) =
      _$AuthenticationStateInitialCopyWithImpl<$Res>;
}

class _$AuthenticationStateInitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateInitialCopyWith<$Res> {
  _$AuthenticationStateInitialCopyWithImpl(AuthenticationStateInitial _value,
      $Res Function(AuthenticationStateInitial) _then)
      : super(_value, (v) => _then(v as AuthenticationStateInitial));

  @override
  AuthenticationStateInitial get _value =>
      super._value as AuthenticationStateInitial;
}

class _$AuthenticationStateInitial implements AuthenticationStateInitial {
  const _$AuthenticationStateInitial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
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
    @required Result initial(AuthenticationStateInitial value),
    @required Result authenticated(AuthenticationStateAuthenticated value),
    @required Result unauthenticated(AuthenticationStateUnauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AuthenticationStateInitial value),
    Result authenticated(AuthenticationStateAuthenticated value),
    Result unauthenticated(AuthenticationStateUnauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateInitial implements AuthenticationState {
  const factory AuthenticationStateInitial() = _$AuthenticationStateInitial;
}

abstract class $AuthenticationStateAuthenticatedCopyWith<$Res> {
  factory $AuthenticationStateAuthenticatedCopyWith(
          AuthenticationStateAuthenticated value,
          $Res Function(AuthenticationStateAuthenticated) then) =
      _$AuthenticationStateAuthenticatedCopyWithImpl<$Res>;
}

class _$AuthenticationStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateAuthenticatedCopyWith<$Res> {
  _$AuthenticationStateAuthenticatedCopyWithImpl(
      AuthenticationStateAuthenticated _value,
      $Res Function(AuthenticationStateAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthenticationStateAuthenticated));

  @override
  AuthenticationStateAuthenticated get _value =>
      super._value as AuthenticationStateAuthenticated;
}

class _$AuthenticationStateAuthenticated
    implements AuthenticationStateAuthenticated {
  const _$AuthenticationStateAuthenticated();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AuthenticationStateInitial value),
    @required Result authenticated(AuthenticationStateAuthenticated value),
    @required Result unauthenticated(AuthenticationStateUnauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AuthenticationStateInitial value),
    Result authenticated(AuthenticationStateAuthenticated value),
    Result unauthenticated(AuthenticationStateUnauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateAuthenticated implements AuthenticationState {
  const factory AuthenticationStateAuthenticated() =
      _$AuthenticationStateAuthenticated;
}

abstract class $AuthenticationStateUnauthenticatedCopyWith<$Res> {
  factory $AuthenticationStateUnauthenticatedCopyWith(
          AuthenticationStateUnauthenticated value,
          $Res Function(AuthenticationStateUnauthenticated) then) =
      _$AuthenticationStateUnauthenticatedCopyWithImpl<$Res>;
}

class _$AuthenticationStateUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateUnauthenticatedCopyWith<$Res> {
  _$AuthenticationStateUnauthenticatedCopyWithImpl(
      AuthenticationStateUnauthenticated _value,
      $Res Function(AuthenticationStateUnauthenticated) _then)
      : super(_value, (v) => _then(v as AuthenticationStateUnauthenticated));

  @override
  AuthenticationStateUnauthenticated get _value =>
      super._value as AuthenticationStateUnauthenticated;
}

class _$AuthenticationStateUnauthenticated
    implements AuthenticationStateUnauthenticated {
  const _$AuthenticationStateUnauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AuthenticationStateInitial value),
    @required Result authenticated(AuthenticationStateAuthenticated value),
    @required Result unauthenticated(AuthenticationStateUnauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AuthenticationStateInitial value),
    Result authenticated(AuthenticationStateAuthenticated value),
    Result unauthenticated(AuthenticationStateUnauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateUnauthenticated
    implements AuthenticationState {
  const factory AuthenticationStateUnauthenticated() =
      _$AuthenticationStateUnauthenticated;
}
