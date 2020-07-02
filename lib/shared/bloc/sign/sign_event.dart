part of 'sign_bloc.dart';

@freezed
abstract class SignEvent with _$SignEvent {
  const factory SignEvent.nameChanged({String name}) = SignEventNameChanged;

  const factory SignEvent.emailChanged({String email}) = SignEventEmailChanged;

  const factory SignEvent.passwordChanged({String password}) =
      SignEventPasswordChanged;

  const factory SignEvent.signUpWithNameEmailPasswordPressed({
    String name,
    String email,
    String password,
  }) = SignEventSignUpWithNameEmailPasswordPressed;

  const factory SignEvent.signInWithEmailPasswordPressed(
      {String email, String password}) = SignEventEmailPasswordPressed;

  const factory SignEvent.signInWithGooglePressed() =
      SignEventSignInWithGooglePressed;

  const factory SignEvent.signInWithFacebookPressed() =
      SignEventSignInWithFacebookPressed;

  const factory SignEvent.signInWithApplePressed() =
      SignEventSignInWithApplePressed;
}
