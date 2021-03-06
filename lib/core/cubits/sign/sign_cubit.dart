import 'dart:math';

import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
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
  final FirestoreUserRepository _firestoreUserRepository;
  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final Validators validators;

  SignCubit(
    this._firestoreUserRepository,
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
      await _firebaseAuthUserRepository.signUp(
          email: email, password: password);

      final User firebaseUser = _firebaseAuthUserRepository.getUser();

      UserModel userModel = UserModel(
        userId: firebaseUser.uid,
        email: email,
        name: name,
      );

      await _firestoreUserRepository.createUser(userModel);

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
      await _firebaseAuthUserRepository.signInWithCredentials(email, password);
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

      await _firestoreUserRepository.createUser(userModel);

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
      await _firebaseAuthUserRepository.signInWithGoogle();
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
      await _firebaseAuthUserRepository.signInWithFacebook();
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
    final userStore =
        await _firestoreUserRepository.getUserUsingUserId(firebaseUser.uid);

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
      await _firestoreUserRepository.createUser(userModel);
    }
  }
}
