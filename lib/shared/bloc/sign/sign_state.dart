//part of 'sign_bloc.dart';
//
//@freezed
//abstract class SignState implements _$SignState {
//  const SignState._();
//  const factory SignState({
//    @required bool isNameValid,
//    @required bool isEmailValid,
//    @required bool isPasswordValid,
//    @required bool isSubmitting,
//    @required bool isSuccess,
//    @required bool isFailure,
//    @required String info,
//  }) = _SignState;
//
//  factory SignState.empty() => SignState(
//        isNameValid: true,
//        isEmailValid: true,
//        isPasswordValid: true,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory SignState.loading() => SignState(
//        isNameValid: true,
//        isEmailValid: true,
//        isPasswordValid: true,
//        isSubmitting: true,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory SignState.failure({@required String info}) => SignState(
//        isNameValid: true,
//        isEmailValid: true,
//        isPasswordValid: true,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: true,
//        info: info,
//      );
//
//  factory SignState.success({@required String info}) => SignState(
//        isNameValid: true,
//        isEmailValid: true,
//        isPasswordValid: true,
//        isSubmitting: false,
//        isSuccess: true,
//        isFailure: false,
//        info: info,
//      );
//
//  bool get isSignUpFormValid => isEmailValid && isPasswordValid && isNameValid;
//  bool get isSignInFormValid => isEmailValid && isPasswordValid;
//}
