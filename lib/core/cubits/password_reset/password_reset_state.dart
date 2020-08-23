part of 'password_reset_cubit.dart';

@freezed
abstract class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState({
    @required bool isEmailValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _PasswordResetState;

  factory PasswordResetState.empty() => PasswordResetState(
        isEmailValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PasswordResetState.loading() => PasswordResetState(
        isEmailValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PasswordResetState.failure({@required String info}) =>
      PasswordResetState(
        isEmailValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory PasswordResetState.success({@required String info}) =>
      PasswordResetState(
        isEmailValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
