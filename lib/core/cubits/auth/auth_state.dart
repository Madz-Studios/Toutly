part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required bool isAuth,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _AuthState;

  factory AuthState.empty() => AuthState(
        isAuth: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory AuthState.loading() => AuthState(
        isAuth: false,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory AuthState.notAuthenticated(String info) => AuthState(
        isAuth: false,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  factory AuthState.authenticated(String info) => AuthState(
        isAuth: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
