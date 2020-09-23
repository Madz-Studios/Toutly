import 'dart:math';

import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
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
import 'package:flutter/foundation.dart';
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
  final FirebaseSignedInWithCredentialsUserUseCase
      firebaseSignedInWithCredentialsUserUseCase;

  final FirestoreCreateUserUseCase firestoreCreateUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final Validators validators;

  SignCubit(
    this.firebaseSignUpUseCase,
    this.firebaseSignedInWithGoogleUserUseCase,
    this.firebaseSignedInWithFacebookUserUseCase,
    this.firebaseSignedInWithCredentialsUserUseCase,
    this.firestoreCreateUserUseCase,
    this.firestoreGetUserUseCase,
    this.validators,
    this._firebaseAuthUserRepository,
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
    try {
      emit(SignState.loading());
      await _firebaseAuthUserRepository.signInAnonymously();
      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
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

      final User firebaseUser = _firebaseAuthUserRepository.getUser();

      UserModel userModel = UserModel(
        userId: firebaseUser.uid,
        email: email,
        name: name,
      );

      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));

      emit(SignState.success(info: 'Successfully registered'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
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
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  linkWithEmailPassword(String name, String email, String password) async {
    emit(SignState.loading());
    try {
      await _firebaseAuthUserRepository.linkCredentialWithEmailPassword(
          email, password);

      final User firebaseUser = _firebaseAuthUserRepository.getUser();

      UserModel userModel = UserModel(
        userId: firebaseUser.uid,
        email: email,
        name: name,
      );

      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));

      emit(SignState.success(info: 'Successfully linked account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
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
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  linkWithGooglePressed() async {
    emit(SignState.loading());
    try {
      await _firebaseAuthUserRepository.linkCredentialWithGoogle();

      emit(SignState.success(info: 'Successfully linked google account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
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
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  linkWithFacebookPressed() async {
    emit(SignState.loading());
    try {
      await _firebaseAuthUserRepository.linkCredentialWithFacebook();
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully linked facebook account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  signInWithApplePressed() async {
    emit(SignState.loading());
    try {
      await _firebaseAuthUserRepository.signInWithApple();
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully logged in.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  linkWithApplePressed() async {
    emit(SignState.loading());
    try {
      await _firebaseAuthUserRepository.linkCredentialWithApple();
      await _createNewUserForSocialSignIn();

      emit(SignState.success(info: 'Successfully linked apple account.'));
    } on PlatformException catch (platFormException) {
      emit(SignState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(SignState.failure(info: firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(SignState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  Future<void> _createNewUserForSocialSignIn() async {
    final User firebaseUser = _firebaseAuthUserRepository.getUser();
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
          dateCreated: DateTime.now(),
          dateUpdated: DateTime.now(),
        );
      } else {
        userModel = UserModel(
          userId: firebaseUser.uid,
          email: firebaseUser.email,
          name: firebaseUser.displayName ?? 'User${rng.nextInt(1000000)}',
          dateCreated: DateTime.now(),
          dateUpdated: DateTime.now(),
        );
      }
      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));
    }
  }
}
