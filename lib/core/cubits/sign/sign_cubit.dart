import 'dart:math';

import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_link_with_apple_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_link_with_credentials_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_link_with_facebook_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_link_with_google_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_anonymously_usecase.dart';
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
import 'package:firebase_auth/firebase_auth.dart';
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
  final FirebaseSignedInAnonymouslyUserUseCase
      firebaseSignedInAnonymouslyUserUseCase;

  final FirebaseLinkCredentialsWithEmailPasswordUserUseCase
      firebaseLinkCredentialsWithEmailPasswordUserUseCase;
  final FirebaseLinkCredentialsWithGoogleUserUseCase
      linkCredentialsWithGoogleUserUseCase;
  final FirebaseLinkCredentialsWithFacebookUserUseCase
      linkCredentialsWithFacebookUserUseCase;
  final FirebaseLinkCredentialsWithAppleUserUseCase
      linkCredentialsWithAppleUserUseCase;

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
    this.firebaseSignedInAnonymouslyUserUseCase,
    this.firebaseLinkCredentialsWithEmailPasswordUserUseCase,
    this.linkCredentialsWithGoogleUserUseCase,
    this.linkCredentialsWithFacebookUserUseCase,
    this.linkCredentialsWithAppleUserUseCase,
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

  signInAnonymously() async {
    emit(SignState.loading());
    await firebaseSignedInAnonymouslyUserUseCase.call(UseCaseNoParam.init());
    emit(SignState.success(info: 'Successfully logged in.'));
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

      emit(SignState.success(info: 'Successfully registered'));
    } on PlatformException catch (platformException) {
      emit(SignState.failure(info: platformException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
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
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  linkWithEmailPassword(String name, String email, String password) async {
    emit(SignState.loading());
    try {
      await firebaseLinkCredentialsWithEmailPasswordUserUseCase(
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
        photoUrl: user.photoURL,
      );

      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));

      emit(SignState.success(info: 'Successfully linked account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  signInWithGooglePressed() async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithGoogleUserUseCase(UseCaseNoParam.init());
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  linkWithGooglePressed() async {
    emit(SignState.loading());
    try {
      await linkCredentialsWithGoogleUserUseCase(UseCaseNoParam.init());
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully linked google account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  signInWithFacebookPressed() async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithFacebookUserUseCase(UseCaseNoParam.init());
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  linkWithFacebookPressed() async {
    emit(SignState.loading());
    try {
      await linkCredentialsWithFacebookUserUseCase(UseCaseNoParam.init());
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully linked facebook account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  signInWithApplePressed() async {
    emit(SignState.loading());
    try {
      await firebaseSignedInWithAppleUserUseCase(UseCaseNoParam.init());
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      if (platFormException.code != 'ERROR_ABORTED_BY_USER') {
        emit(SignState.failure(info: platFormException.message));
      }
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  linkWithApplePressed() async {
    emit(SignState.loading());
    try {
      await linkCredentialsWithAppleUserUseCase(UseCaseNoParam.init());
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully linked apple account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
    } on FirebaseAuthException catch (e) {
      emit(SignState.failure(info: e.message));
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
    }
  }

  Future<void> _createNewUserForSocialSignIn() async {
    final firebaseUser = firebaseGetUserUseCase.call(UseCaseNoParam.init());
    final userStore = await firestoreGetUserUseCase
        .call(UseCaseUserParamUserId.init(firebaseUser.uid));

    final rng = Random();

    if (userStore == null) {
      // if user is not existed in User Firestore create a User
      UserModel userModel;
      if (firebaseUser.providerData.isNotEmpty) {
        userModel = UserModel(
          userId: firebaseUser.uid,
          email: firebaseUser.providerData[0].email,
          name: firebaseUser.providerData[0].displayName ??
              'User${rng.nextInt(1000000)}',
          photoUrl: firebaseUser.providerData[0].photoURL,
          dateCreated: DateTime.now(),
          dateUpdated: DateTime.now(),
        );
      } else {
        userModel = UserModel(
          userId: firebaseUser.uid,
          email: firebaseUser.email,
          name: firebaseUser.displayName ?? 'User${rng.nextInt(1000000)}',
          photoUrl: firebaseUser.photoURL,
          dateCreated: DateTime.now(),
          dateUpdated: DateTime.now(),
        );
      }
      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));
    }
  }
}
