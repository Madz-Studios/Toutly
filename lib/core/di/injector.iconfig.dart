// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:Toutly/shared/bloc/apple_sign_in/apple_sign_in_bloc.dart';
import 'package:Toutly/features/edit_barter_item/bloc/edit_barter_item_bloc.dart';
import 'package:Toutly/core/di/module_injector.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Toutly/core/repositories/barter/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/barter/firestore_create_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/barter/firestore_delete_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/barter/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/barter/firestore_update_barter_item_use_case.dart';
import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
import 'package:geoflutterfire/src/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:Toutly/shared/util/validators.dart';
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
import 'package:Toutly/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:Toutly/features/home/bloc/home_bloc.dart';
import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/shared/bloc/sign/sign_bloc.dart';
import 'package:Toutly/features/user_barter_listing/bloc/user_barter_listing_bloc.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_delete_all_save_data_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_get_current_user_geo_location_latitude_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_get_current_user_geo_location_longitude_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_persist_user_geo_location_usecase.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<AppleSignInBloc>(() => AppleSignInBloc());
  g.registerLazySingleton<EditBarterItemBloc>(() => EditBarterItemBloc());
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
  g.registerLazySingleton<FirestoreDeleteBarterItemUseCase>(() =>
      FirestoreDeleteBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreGetAllBarterItemsUsingUserIdUseCase>(() =>
      FirestoreGetAllBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreUpdateBarterItemUseCase>(() =>
      FirestoreUpdateBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerFactory<FirestoreUserRepository>(
      () => FirestoreUserRepositoryImpl(firestore: g<Firestore>()));
  g.registerLazySingleton<Geoflutterfire>(
      () => injectableModule.geoFlutterFire);
  g.registerLazySingleton<Geolocator>(() => injectableModule.geoLocator);
  g.registerLazySingleton<GoogleSignIn>(() => injectableModule.googleSignIn);
  g.registerLazySingleton<LocationBloc>(
      () => LocationBloc(g<Geolocator>(), g<Geoflutterfire>()));
  g.registerLazySingleton<NavigationBloc>(() => NavigationBloc());
  final remoteConfig = await injectableModule.remoteConfig;
  g.registerFactory<RemoteConfig>(() => remoteConfig);
  g.registerLazySingleton<RemoteConfigDataBloc>(
      () => RemoteConfigDataBloc(g<RemoteConfig>()));
  final sharedPreferences = await injectableModule.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<Uuid>(() => injectableModule.uuid);
  g.registerLazySingleton<Validators>(() => injectableModule.validators);
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
  g.registerLazySingleton<FirestoreUpdateUserUseCase>(() =>
      FirestoreUpdateUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<HomeBloc>(
      () => HomeBloc(g<FirestoreGetUserUseCase>()));
  g.registerFactory<LocalSharedPrefRepository>(
      () => LocalUserRepositoryImpl(sharedPreferences: g<SharedPreferences>()));
  g.registerLazySingleton<PostBloc>(() => PostBloc(
        g<FirebaseStorage>(),
        g<Uuid>(),
        g<Validators>(),
        g<FirebaseGetUserUseCase>(),
        g<FirestoreCreateBarterItemUseCase>(),
        g<FirestoreUpdateBarterItemUseCase>(),
      ));
  g.registerLazySingleton<SignBloc>(() => SignBloc(
        g<FirebaseSignUpUseCase>(),
        g<FirebaseSignedInWithGoogleUserUseCase>(),
        g<FirebaseSignedInWithFacebookUserUseCase>(),
        g<FirebaseSignedInWithAppleUserUseCase>(),
        g<FirebaseSignedInWithCredentialsUserUseCase>(),
        g<FirebaseGetUserUseCase>(),
        g<FirestoreCreateUserUseCase>(),
        g<FirestoreGetUserUseCase>(),
        g<Validators>(),
      ));
  g.registerLazySingleton<UserBarterListingBloc>(() => UserBarterListingBloc(
      g<FirebaseGetUserUseCase>(),
      g<FirestoreGetAllBarterItemsUsingUserIdUseCase>()));
  g.registerLazySingleton<ViewBarterItemBloc>(() => ViewBarterItemBloc(
      g<FirebaseGetUserUseCase>(), g<FirestoreDeleteBarterItemUseCase>()));
  g.registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc(
        g<FirebaseIsSignedInUserUseCase>(),
        g<FirebaseSignOutUserUseCase>(),
        g<FirestoreGetUserUseCase>(),
      ));
  g.registerLazySingleton<LocalSharedDeleteAllSaveDataUseCase>(() =>
      LocalSharedDeleteAllSaveDataUseCase(
          localSharedPrefRepository: g<LocalSharedPrefRepository>()));
  g.registerLazySingleton<
          LocalSharedPrefGetCurrentUserGeoLocationLatitudeUseCase>(
      () => LocalSharedPrefGetCurrentUserGeoLocationLatitudeUseCase(
          localSharedPrefRepository: g<LocalSharedPrefRepository>()));
  g.registerLazySingleton<
          LocalSharedPrefGetCurrentUserGeoLocationLongitudeUseCase>(
      () => LocalSharedPrefGetCurrentUserGeoLocationLongitudeUseCase(
          localSharedPrefRepository: g<LocalSharedPrefRepository>()));
  g.registerLazySingleton<LocalSharedPrefPersistUserGeoLocationUseCase>(() =>
      LocalSharedPrefPersistUserGeoLocationUseCase(
          localSharedPrefRepository: g<LocalSharedPrefRepository>()));
}

class _$InjectableModule extends InjectableModule {}
