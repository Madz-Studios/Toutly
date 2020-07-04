part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = AuthenticationStateInitial;
  const factory AuthenticationState.authenticated() =
      AuthenticationStateAuthenticated;
  const factory AuthenticationState.unauthenticated() =
      AuthenticationStateUnauthenticated;
}
