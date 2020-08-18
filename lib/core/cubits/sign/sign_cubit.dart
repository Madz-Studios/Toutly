import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_apple_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_credentials_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_facebook_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_google_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signup_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_create_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_cubit.freezed.dart';
part 'sign_state.dart';

@lazySingleton
class SignCubit extends Cubit<SignState> {
  final FirebaseSignUpUseCase firebaseSignUpUseCase;
  final FirebaseSignedInWithGoogleUserUseCase
      firebaseSignedInWithGoogleUserUseCase;
  final FirebaseSignedInWithFacebookUserUseCase
      firebaseSignedInWithFacebookUserUseCase;
  final FirebaseSignedInWithAppleUserUseCase
      firebaseSignedInWithAppleUserUseCase;
  final FirebaseSignedInWithCredentialsUserUseCase
      firebaseSignedInWithCredentialsUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreCreateUserUseCase firestoreCreateUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final Validators validators;

  SignCubit(
    this.firebaseSignUpUseCase,
    this.firebaseSignedInWithGoogleUserUseCase,
    this.firebaseSignedInWithFacebookUserUseCase,
    this.firebaseSignedInWithAppleUserUseCase,
    this.firebaseSignedInWithCredentialsUserUseCase,
    this.firebaseGetUserUseCase,
    this.firestoreCreateUserUseCase,
    this.firestoreGetUserUseCase,
    this.validators,
  ) : super((SignState.empty()));

  reset() {
    emit(SignState.empty());
  }

  nameChanged(String name) {
    emit(state.copyWith(
      isNameValid: validators.isValidTextLength4To30Chars(name),
      isFailure: false,
      isSubmitting: false,
      isSuccess: false,
    ));
  }

  emailChanged(String email) {
    emit(state.copyWith(
      isEmailValid: validators.isValidEmail(email),
      isFailure: false,
      isSubmitting: false,
      isSuccess: false,
    ));
  }

  passwordChanged(String password) {
    emit(state.copyWith(
      isPasswordValid: validators.isValidPassword(password),
      isFailure: false,
      isSubmitting: false,
      isSuccess: false,
    ));
  }

  signUpWithNameEmailPasswordPressed(
      String name, String email, String password) async {
    emit(SignState.loading());
    try {
      await firebaseSignUpUseCase.call(
        UseCaseUserParamEmailPassword.init(
          email,
          password,
        ),
      );

      final user = firebaseGetUserUseCase(UseCaseNoParam.init());

      UserModel userModel = UserModel(
        userId: user.uid,
        email: email,
        name: name,
      );

      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));

      emit(SignState.success(info: 'Successfully registered'));
    } on PlatformException catch (platformException) {
      emit(SignState.failure(info: platformException.message));
    }
  }

  signInWithEmailPasswordPressed(String email, String password) async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithCredentialsUserUseCase(
        UseCaseUserParamEmailPassword.init(
          email,
          password,
        ),
      );
      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    }
  }

  signInWithGooglePressed() async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithGoogleUserUseCase(UseCaseNoParam.init());
      _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    }
  }

  signInWithFacebookPressed() async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithFacebookUserUseCase(UseCaseNoParam.init());
      _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      if (platFormException.code != 'ERROR_ABORTED_BY_USER') {
        emit(SignState.failure(info: platFormException.message));
      }
    }
  }

  signInWithApplePressed() async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithAppleUserUseCase(UseCaseNoParam.init());
      _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      if (platFormException.code != 'ERROR_ABORTED_BY_USER') {
        emit(SignState.failure(info: platFormException.message));
      }
    }
  }

  void _createNewUserForSocialSignIn() async {
    final firebaseUser = firebaseGetUserUseCase.call(UseCaseNoParam.init());
    final userStore = await firestoreGetUserUseCase
        .call(UseCaseUserParamUserId.init(firebaseUser.uid));

    if (userStore == null) {
      // if user is not existed in User Firestore create a User
      UserModel userModel = UserModel(
        userId: firebaseUser.uid,
        email: firebaseUser.email,
        name: firebaseUser.displayName,
        dateCreated: DateTime.now(),
        dateUpdated: DateTime.now(),
      );
      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));
    }
  }
}
