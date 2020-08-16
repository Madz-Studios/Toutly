part of 'apple_sign_cubit.dart';

@freezed
abstract class AppleSignState with _$AppleSignState {
  const factory AppleSignState({
    @required bool isAppleSignInAvailable,
  }) = _AppleSignState;

  factory AppleSignState.init() => AppleSignState(
        isAppleSignInAvailable: false,
      );

  factory AppleSignState.setAppleSignInAvailable(isAppleSignInAvailable) =>
      AppleSignState(
        isAppleSignInAvailable: isAppleSignInAvailable,
      );
}
