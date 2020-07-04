part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState implements _$AuthenticationState {
//  const factory AuthenticationState.initial() = AuthenticationStateInitial;
//  const factory AuthenticationState.authenticated() =
//      AuthenticationStateAuthenticated;
//  const factory AuthenticationState.unauthenticated() =
//      AuthenticationStateUnauthenticated;
//  const factory AuthenticationState.failure(
//      {@nullable @required String message}) = AuthenticationStateFailure;

  const AuthenticationState._();
  const factory AuthenticationState({
    @required bool isAppJustStarted,
    @required bool isAuthenticated,
    @required String info,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
        isAppJustStarted: true,
        isAuthenticated: false,
        info: '',
      );

  factory AuthenticationState.unAuthenticated() => AuthenticationState(
        isAppJustStarted: false,
        isAuthenticated: false,
        info: '',
      );

  factory AuthenticationState.authenticated() => AuthenticationState(
        isAppJustStarted: false,
        isAuthenticated: true,
        info: '',
      );

  factory AuthenticationState.error({@required String info}) =>
      AuthenticationState(
        isAppJustStarted: false,
        isAuthenticated: false,
        info: info,
      );
}
