// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/di/module_injector.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Toutly/core/repositories/barter_conversation_text/firestore_barter_conversation_text_repository.dart';
import 'package:Toutly/core/repositories/barter_message/firestore_barter_message_repository.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/barter_conversation_text/firestore_create_barter_conversation_text_use_case.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_create_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_create_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_delete_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_offer_messages_use_case.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_update_barter_item_use_case.dart';
import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:Toutly/core/cubits/likes/current_user/likes_current_user_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/shared/bloc/messages/messages_bloc.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
import 'package:Toutly/shared/bloc/search_config/search_config_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
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
import 'package:Toutly/core/cubits/barter_item/current_user/list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_delete_all_save_data_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_get_current_user_geo_location_latitude_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_get_current_user_geo_location_longitude_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_persist_user_geo_location_usecase.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<AppleSignCubit>(() => AppleSignCubit());
  g.registerLazySingleton<FacebookLogin>(() => injectableModule.facebookLogin);
  g.registerLazySingleton<FirebaseAuth>(() => injectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseStorage>(
      () => injectableModule.firebaseStorage);
  g.registerLazySingleton<Firestore>(() => injectableModule.firestore);
  g.registerFactory<FirestoreBarterConversationTextRepository>(() =>
      FirestoreBarterConversationTextRepositoryImpl(firestore: g<Firestore>()));
  g.registerFactory<FirestoreBarterMessageRepository>(
      () => FirestoreBarterMessageRepositoryImpl(firestore: g<Firestore>()));
  g.registerFactory<FirestoreBarterRepository>(
      () => FirestoreBarterRepositoryImpl(firestore: g<Firestore>()));
  g.registerLazySingleton<FirestoreCreateBarterConversationTextUseCase>(() =>
      FirestoreCreateBarterConversationTextUseCase(
          firestoreBarterConversationTextRepository:
              g<FirestoreBarterConversationTextRepository>()));
  g.registerLazySingleton<FirestoreCreateBarterItemUseCase>(() =>
      FirestoreCreateBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreCreateBarterMessagesUseCase>(() =>
      FirestoreCreateBarterMessagesUseCase(
          firestoreBarterMessagesRepository:
              g<FirestoreBarterMessageRepository>()));
  g.registerLazySingleton<FirestoreDeleteBarterItemUseCase>(() =>
      FirestoreDeleteBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreGetAllBarterItemsUsingUserIdUseCase>(() =>
      FirestoreGetAllBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreGetAllBarterMessagesUseCase>(() =>
      FirestoreGetAllBarterMessagesUseCase(
          firestoreBarterMessagesRepository:
              g<FirestoreBarterMessageRepository>()));
  g.registerLazySingleton<FirestoreGetAllLikesBarterItemsUsingUserIdUseCase>(
      () => FirestoreGetAllLikesBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerLazySingleton<FirestoreGetAllOfferMessagesUseCase>(() =>
      FirestoreGetAllOfferMessagesUseCase(
          firestoreBarterMessagesRepository:
              g<FirestoreBarterMessageRepository>()));
  g.registerLazySingleton<FirestoreUpdateBarterItemUseCase>(() =>
      FirestoreUpdateBarterItemUseCase(
          firestoreBarterRepository: g<FirestoreBarterRepository>()));
  g.registerFactory<FirestoreUserRepository>(
      () => FirestoreUserRepositoryImpl(g<Firestore>()));
  g.registerLazySingleton<Geolocator>(() => injectableModule.geoLocator);
  g.registerLazySingleton<GoogleSignIn>(() => injectableModule.googleSignIn);
  g.registerLazySingleton<LikesCurrentUserCubit>(() => LikesCurrentUserCubit(
      g<FirestoreGetAllLikesBarterItemsUsingUserIdUseCase>()));
  g.registerLazySingleton<LocationCubit>(() => LocationCubit(g<Geolocator>()));
  g.registerLazySingleton<MessagesBloc>(() => MessagesBloc(
      g<FirestoreGetAllBarterMessagesUseCase>(),
      g<FirestoreGetAllOfferMessagesUseCase>()));
  g.registerLazySingleton<NavigationBloc>(() => NavigationBloc());
  final remoteConfig = await injectableModule.remoteConfig;
  g.registerFactory<RemoteConfig>(() => remoteConfig);
  g.registerLazySingleton<RemoteConfigDataBloc>(
      () => RemoteConfigDataBloc(g<RemoteConfig>()));
  g.registerLazySingleton<SearchBloc>(() => SearchBloc());
  g.registerLazySingleton<SearchConfigBloc>(() => SearchConfigBloc());
  final sharedPreferences = await injectableModule.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<SingleBarterItemOtherUserCubit>(
      () => SingleBarterItemOtherUserCubit());
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
  g.registerLazySingleton<ListBarterModelCurrentUserCubit>(
      () => ListBarterModelCurrentUserCubit(
            g<FirebaseGetUserUseCase>(),
            g<FirestoreGetAllBarterItemsUsingUserIdUseCase>(),
            g<FirestoreGetAllLikesBarterItemsUsingUserIdUseCase>(),
          ));
  g.registerFactory<LocalSharedPrefRepository>(
      () => LocalUserRepositoryImpl(sharedPreferences: g<SharedPreferences>()));
  g.registerLazySingleton<MakeOfferCubit>(() => MakeOfferCubit(
        g<FirestoreCreateBarterConversationTextUseCase>(),
        g<FirestoreCreateBarterMessagesUseCase>(),
        g<Validators>(),
        g<Uuid>(),
      ));
  g.registerLazySingleton<OtherUserCubit>(() => OtherUserCubit(
        g<FirebaseGetUserUseCase>(),
        g<FirestoreGetUserUseCase>(),
        g<FirestoreUpdateUserUseCase>(),
        g<FirebaseStorage>(),
        g<Uuid>(),
        g<Validators>(),
      ));
  g.registerLazySingleton<PostBloc>(() => PostBloc(
        g<FirebaseStorage>(),
        g<Uuid>(),
        g<Validators>(),
        g<FirebaseGetUserUseCase>(),
        g<FirestoreCreateBarterItemUseCase>(),
      ));
  g.registerLazySingleton<SignCubit>(() => SignCubit(
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
  g.registerLazySingleton<ViewBarterItemBloc>(() => ViewBarterItemBloc(
        g<FirebaseGetUserUseCase>(),
        g<FirestoreDeleteBarterItemUseCase>(),
        g<FirestoreGetUserUseCase>(),
      ));
  g.registerLazySingleton<AuthCubit>(() => AuthCubit(
        g<FirebaseIsSignedInUserUseCase>(),
        g<FirebaseSignOutUserUseCase>(),
        g<FirestoreGetUserUseCase>(),
      ));
  g.registerLazySingleton<CurrentUserCubit>(() => CurrentUserCubit(
        g<FirebaseGetUserUseCase>(),
        g<FirestoreGetUserUseCase>(),
        g<FirestoreUpdateUserUseCase>(),
        g<FirebaseStorage>(),
        g<Uuid>(),
        g<Validators>(),
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
