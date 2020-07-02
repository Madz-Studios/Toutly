// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:Toutly/shared/bloc/apple_sign_in/apple_sign_in_bloc.dart';
import 'package:Toutly/core/di/module_injector.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Toutly/core/repositories/barter/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/barter/firestore_create_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/barter/firestore_update_barter_item_use_case.dart';
import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_item_bloc.dart';
import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/auth/firebase_signup_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_apple_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_credentials_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_facebook_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_google_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_create_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/shared/bloc/sign/sign_bloc.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<AppleSignInBloc>(() => AppleSignInBloc());
  g.registerLazySingleton<FacebookLogin>(() => injectableModule.facebookLogin);
  g.registerLazySingleton<FirebaseAuth>(() => injectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseStorage>(
      () => injectableModule.firebaseStorage);
  g.registerLazySingleton<Firestore>(() => injectableModule.firestore);
  g.registerFactory<FirestoreBarterRepository>(
      () => FirestoreBarterRepositoryImpl(firestore: g<Firestore>()));
  g.registerLazySingleton<FirestoreCreateBarterItemUseCase>(() =>
      FirestoreCreateBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreUpdateBarterItemUseCase>(() =>
      FirestoreUpdateBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerFactory<FirestoreUserRepository>(
      () => FirestoreUserRepositoryImpl(firestore: g<Firestore>()));
  g.registerLazySingleton<GoogleSignIn>(() => injectableModule.googleSignIn);
  g.registerLazySingleton<NavigationBloc>(() => NavigationBloc());
  final sharedPreferences = await injectableModule.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<Uuid>(() => injectableModule.uuid);
  g.registerLazySingleton<Validators>(() => injectableModule.validators);
  g.registerLazySingleton<ViewItemBloc>(() => ViewItemBloc());
  g.registerFactory<FirebaseAuthUserRepository>(
      () => FirebaseAuthUserRepositoryImpl(
            firebaseAuth: g<FirebaseAuth>(),
            googleSignIn: g<GoogleSignIn>(),
            facebookLogin: g<FacebookLogin>(),
          ));
  g.registerLazySingleton<FirebaseGetUserUseCase>(() => FirebaseGetUserUseCase(
      firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseIsSignedInUserUseCase>(() =>
      FirebaseIsSignedInUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignOutUserUseCase>(() =>
      FirebaseSignOutUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignUpUseCase>(() => FirebaseSignUpUseCase(
      firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithAppleUserUseCase>(() =>
      FirebaseSignedInWithAppleUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithCredentialsUserUseCase>(() =>
      FirebaseSignedInWithCredentialsUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithFacebookUserUseCase>(() =>
      FirebaseSignedInWithFacebookUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithGoogleUserUseCase>(() =>
      FirebaseSignedInWithGoogleUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirestoreCreateUserUseCase>(() =>
      FirestoreCreateUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<FirestoreGetUserUseCase>(() =>
      FirestoreGetUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<PostBloc>(() => PostBloc(
        firebaseStorage: g<FirebaseStorage>(),
        uuid: g<Uuid>(),
        validators: g<Validators>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
        firestoreCreateBarterItemUseCase: g<FirestoreCreateBarterItemUseCase>(),
        firestoreUpdateBarterItemUseCase: g<FirestoreUpdateBarterItemUseCase>(),
      ));
  g.registerLazySingleton<SignBloc>(() => SignBloc(
        firebaseSignUpUseCase: g<FirebaseSignUpUseCase>(),
        firebaseSignedInWithGoogleUserUseCase:
            g<FirebaseSignedInWithGoogleUserUseCase>(),
        firebaseSignedInWithFacebookUserUseCase:
            g<FirebaseSignedInWithFacebookUserUseCase>(),
        firebaseSignedInWithAppleUserUseCase:
            g<FirebaseSignedInWithAppleUserUseCase>(),
        firebaseSignedInWithCredentialsUserUseCase:
            g<FirebaseSignedInWithCredentialsUserUseCase>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
        firestoreCreateUserUseCase: g<FirestoreCreateUserUseCase>(),
        firestoreGetUserUseCase: g<FirestoreGetUserUseCase>(),
        validators: g<Validators>(),
      ));
  g.registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc(
        firebaseIsSignedInUserUseCase: g<FirebaseIsSignedInUserUseCase>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
        firebaseSignOutUserUseCase: g<FirebaseSignOutUserUseCase>(),
      ));
}

class _$InjectableModule extends InjectableModule {}
