// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../cubits/barter_item/current_user/list/all/all_list_barter_model_current_user_cubit.dart';
import '../cubits/apple_sign/apple_sign_cubit.dart';
import '../cubits/auth/auth_cubit.dart';
import '../cubits/barter_messages/barter/items/barter_items_cubit.dart';
import '../cubits/barter_messages/barter/barter_message_cubit.dart';
import '../cubits/cloud_functions_call/cloud_function_call_cubit.dart';
import '../cubits/barter_messages/conversation/conversation_cubit.dart';
import '../cubits/user/current_user/current_user_cubit.dart';
import '../cubits/barter_item/current_user/single_barter_item/delete/delete_barter_model_current_user_cubit.dart';
import '../repositories/auth/firebase_auth_user_repository.dart';
import '../usecases/auth/firebase_is_signedin_usecase.dart';
import '../usecases/auth/firebase_link_with_apple_usecase.dart';
import '../usecases/auth/firebase_link_with_credentials_usecase.dart';
import '../usecases/auth/firebase_link_with_facebook_usecase.dart';
import '../usecases/auth/firebase_link_with_google_usecase.dart';
import '../usecases/auth/firebase_send_reset_password_usecase.dart';
import '../usecases/auth/firebase_signout_use_case.dart';
import '../usecases/auth/firebase_signup_usecase.dart';
import '../usecases/auth/firebase_signin_anonymously_usecase.dart';
import '../usecases/auth/firebase_signin_with_apple_usecase.dart';
import '../usecases/auth/firebase_signin_with_credentials_usecase.dart';
import '../usecases/auth/firebase_signin_with_facebook_usecase.dart';
import '../usecases/auth/firebase_signin_with_google_usecase.dart';
import '../repositories/barter_conversation_text/firestore_barter_conversation_text_repository.dart';
import '../repositories/barter_message/firestore_barter_message_repository.dart';
import '../repositories/barter_item/firestore_barter_repository.dart';
import '../usecases/barter_conversation_text/firestore_create_barter_conversation_text_use_case.dart';
import '../usecases/barter_item/firestore_create_barter_item_use_case.dart';
import '../usecases/barter_messages/firestore_create_barter_messages_use_case.dart';
import '../usecases/user/firestore_create_saved_item_usecase.dart';
import '../usecases/user/firestore_create_user_usecase.dart';
import '../usecases/barter_item/firestore_delete_barter_item_use_case.dart';
import '../usecases/user/firestore_delete_saved_item_usecase.dart';
import '../usecases/barter_messages/items/firestore_get_all_user_barter_items_use_case.dart';
import '../usecases/barter_item/firestore_get_all_barter_items_using_user_id.dart';
import '../usecases/barter_messages/firestore_get_all_user_barter_messages_use_case.dart';
import '../usecases/barter_conversation_text/firestore_get_all_conversation_from_message_use_case.dart';
import '../usecases/user/firestore_get_all_fcm_token_usecase.dart';
import '../usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
import '../usecases/barter_messages/items/firestore_get_all_user_offer_items_use_case.dart';
import '../usecases/barter_messages/firestore_get_all_user_offer_messages_use_case.dart';
import '../usecases/barter_item/firestore_get_private_barter_items_using_user_id.dart';
import '../usecases/barter_item/firestore_get_public_barter_items_using_user_id.dart';
import '../usecases/user/firestore_get_user_usecase.dart';
import '../usecases/barter_item/firestore_update_all_barter_item_use_case.dart';
import '../usecases/barter_item/firestore_update_barter_item_use_case.dart';
import '../usecases/barter_messages/firestore_update_barter_messages_use_case.dart';
import '../usecases/user/firestore_update_user_usecase.dart';
import '../repositories/user/firestore_user_repository.dart';
import 'module_injector.dart';
import '../usecases/local_shared_pref/local_shared_pref_delete_all_save_data_usecase.dart';
import '../usecases/local_shared_pref/local_shared_pref_get_current_user_geo_location_latitude_usecase.dart';
import '../usecases/local_shared_pref/local_shared_pref_get_current_user_geo_location_longitude_usecase.dart';
import '../usecases/local_shared_pref/local_shared_pref_persist_user_geo_location_usecase.dart';
import '../repositories/local/local_shared_pref_repository.dart';
import '../cubits/location/location_cubit.dart';
import '../cubits/make_offer/make_offer_cubit.dart';
import '../cubits/navigation/navigation_cubit.dart';
import '../cubits/notification/notification_cubit.dart';
import '../cubits/barter_messages/offer/items/offer_items_cubit.dart';
import '../cubits/user/other_user/other_user_cubit.dart';
import '../cubits/password_reset/password_reset_cubit.dart';
import '../cubits/post_barter/post_barter_cubit.dart';
import '../cubits/privacy_services/privacy_services_cubit.dart';
import '../cubits/barter_item/current_user/list/private/private_list_barter_model_current_user_cubit.dart';
import '../cubits/barter_item/current_user/list/public/public_list_barter_model_current_user_cubit.dart';
import '../cubits/remote_config/remote_config_cubit.dart';
import '../cubits/saved/current_user/saved_barter_items_cubit.dart';
import '../cubits/search_config/search_config_cubit.dart';
import '../cubits/search/search_cubit.dart';
import '../cubits/sign/sign_cubit.dart';
import '../cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import '../cubits/barter_item/current_user/single_barter_item/update/update_barter_model_current_user_cubit.dart';
import '../../shared/util/validators.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<AppleSignCubit>(() => AppleSignCubit());
  gh.lazySingleton<CloudFunctionCallCubit>(() => CloudFunctionCallCubit());
  gh.lazySingleton<FacebookLogin>(() => injectableModule.facebookLogin);
  gh.lazySingleton<FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => injectableModule.firebaseFirestore);
  gh.lazySingleton<FirebaseMessaging>(() => injectableModule.firebaseMessaging);
  gh.lazySingleton<FirebaseStorage>(() => injectableModule.firebaseStorage);
  gh.factory<FirestoreBarterConversationTextRepository>(() =>
      FirestoreBarterConversationTextRepositoryImpl(
          firestore: get<FirebaseFirestore>()));
  gh.factory<FirestoreBarterMessageRepository>(() =>
      FirestoreBarterMessageRepositoryImpl(
          firestore: get<FirebaseFirestore>()));
  gh.lazySingleton<FirestoreCreateBarterConversationTextUseCase>(() =>
      FirestoreCreateBarterConversationTextUseCase(
          firestoreBarterConversationTextRepository:
              get<FirestoreBarterConversationTextRepository>()));
  gh.lazySingleton<FirestoreCreateBarterMessagesUseCase>(() =>
      FirestoreCreateBarterMessagesUseCase(
          firestoreBarterMessagesRepository:
              get<FirestoreBarterMessageRepository>()));
  gh.lazySingleton<FirestoreGetAllBarterMessagesUseCase>(() =>
      FirestoreGetAllBarterMessagesUseCase(
          firestoreBarterMessagesRepository:
              get<FirestoreBarterMessageRepository>()));
  gh.lazySingleton<FirestoreGetAllConversationFromMessagesUseCase>(() =>
      FirestoreGetAllConversationFromMessagesUseCase(
          firestoreBarterConversationTextRepository:
              get<FirestoreBarterConversationTextRepository>()));
  gh.lazySingleton<FirestoreGetAllOfferMessagesUseCase>(() =>
      FirestoreGetAllOfferMessagesUseCase(
          firestoreBarterMessagesRepository:
              get<FirestoreBarterMessageRepository>()));
  gh.lazySingleton<FirestoreUpdateBarterMessagesUseCase>(() =>
      FirestoreUpdateBarterMessagesUseCase(
          firestoreBarterMessagesRepository:
              get<FirestoreBarterMessageRepository>()));
  gh.factory<FirestoreUserRepository>(
      () => FirestoreUserRepositoryImpl(get<FirebaseFirestore>()));
  gh.lazySingleton<Geoflutterfire>(() => injectableModule.geoFlutterFire);
  gh.lazySingleton<GeolocatorPlatform>(() => injectableModule.geoLocator);
  gh.lazySingleton<GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<NavigationCubit>(() => NavigationCubit());
  gh.lazySingleton<PrivacyServicesCubit>(() => PrivacyServicesCubit());
  final remoteConfig = await injectableModule.remoteConfig;
  gh.factory<RemoteConfig>(() => remoteConfig);
  gh.lazySingleton<RemoteConfigCubit>(
      () => RemoteConfigCubit(get<RemoteConfig>()));
  gh.lazySingleton<SearchConfigCubit>(() => SearchConfigCubit());
  final sharedPreferences = await injectableModule.sharedPreferences;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<SingleBarterItemOtherUserCubit>(
      () => SingleBarterItemOtherUserCubit());
  gh.lazySingleton<Uuid>(() => injectableModule.uuid);
  gh.lazySingleton<Validators>(() => injectableModule.validators);
  gh.lazySingleton<ConversationCubit>(() => ConversationCubit(
        get<CloudFunctionCallCubit>(),
        get<FirestoreGetAllConversationFromMessagesUseCase>(),
        get<FirestoreCreateBarterConversationTextUseCase>(),
        get<FirestoreUpdateBarterMessagesUseCase>(),
        get<Uuid>(),
      ));
  gh.factory<FirebaseAuthUserRepository>(() => FirebaseAuthUserRepositoryImpl(
        firebaseAuth: get<FirebaseAuth>(),
        googleSignIn: get<GoogleSignIn>(),
        facebookLogin: get<FacebookLogin>(),
      ));
  gh.lazySingleton<FirebaseIsSignedInUserUseCase>(() =>
      FirebaseIsSignedInUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseLinkCredentialsWithAppleUserUseCase>(() =>
      FirebaseLinkCredentialsWithAppleUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseLinkCredentialsWithEmailPasswordUserUseCase>(() =>
      FirebaseLinkCredentialsWithEmailPasswordUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseLinkCredentialsWithFacebookUserUseCase>(() =>
      FirebaseLinkCredentialsWithFacebookUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseLinkCredentialsWithGoogleUserUseCase>(() =>
      FirebaseLinkCredentialsWithGoogleUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSendResetPasswordUseCase>(() =>
      FirebaseSendResetPasswordUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignOutUserUseCase>(() => FirebaseSignOutUserUseCase(
      firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignUpUseCase>(() => FirebaseSignUpUseCase(
      firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignedInAnonymouslyUserUseCase>(() =>
      FirebaseSignedInAnonymouslyUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignedInWithAppleUserUseCase>(() =>
      FirebaseSignedInWithAppleUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignedInWithCredentialsUserUseCase>(() =>
      FirebaseSignedInWithCredentialsUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignedInWithFacebookUserUseCase>(() =>
      FirebaseSignedInWithFacebookUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.lazySingleton<FirebaseSignedInWithGoogleUserUseCase>(() =>
      FirebaseSignedInWithGoogleUserUseCase(
          firebaseAuthUserRepository: get<FirebaseAuthUserRepository>()));
  gh.factory<FirestoreBarterRepository>(() => FirestoreBarterRepositoryImpl(
        get<Geoflutterfire>(),
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
      ));
  gh.lazySingleton<FirestoreCreateBarterItemUseCase>(() =>
      FirestoreCreateBarterItemUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreCreateSavedItemUseCase>(() =>
      FirestoreCreateSavedItemUseCase(
          firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.lazySingleton<FirestoreCreateUserUseCase>(() => FirestoreCreateUserUseCase(
      firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.lazySingleton<FirestoreDeleteBarterItemUseCase>(() =>
      FirestoreDeleteBarterItemUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreDeleteSavedItemUseCase>(() =>
      FirestoreDeleteSavedItemUseCase(
          firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.lazySingleton<FirestoreGetAllBarterItemsUseCase>(() =>
      FirestoreGetAllBarterItemsUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreGetAllBarterItemsUsingUserIdUseCase>(() =>
      FirestoreGetAllBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreGetAllFcmTokenUseCase>(() =>
      FirestoreGetAllFcmTokenUseCase(
          firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.lazySingleton<FirestoreGetAllLikesBarterItemsUsingUserIdUseCase>(() =>
      FirestoreGetAllLikesBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreGetAllOfferItemsUseCase>(
      () => FirestoreGetAllOfferItemsUseCase(get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreGetPrivateBarterItemsUsingUserIdUseCase>(() =>
      FirestoreGetPrivateBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreGetPublicBarterItemsUsingUserIdUseCase>(() =>
      FirestoreGetPublicBarterItemsUsingUserIdUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreGetUserUseCase>(() => FirestoreGetUserUseCase(
      firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.lazySingleton<FirestoreUpdateAllBarterItemUseCase>(() =>
      FirestoreUpdateAllBarterItemUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreUpdateBarterItemUseCase>(() =>
      FirestoreUpdateBarterItemUseCase(
          firestoreBarterRepository: get<FirestoreBarterRepository>()));
  gh.lazySingleton<FirestoreUpdateUserUseCase>(() => FirestoreUpdateUserUseCase(
      firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.factory<LocalSharedPrefRepository>(() =>
      LocalUserRepositoryImpl(sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<LocationCubit>(() =>
      LocationCubit(get<PrivacyServicesCubit>(), get<GeolocatorPlatform>()));
  gh.lazySingleton<MakeOfferCubit>(() => MakeOfferCubit(
        get<CloudFunctionCallCubit>(),
        get<FirestoreCreateBarterConversationTextUseCase>(),
        get<FirestoreCreateBarterMessagesUseCase>(),
        get<Validators>(),
        get<Uuid>(),
      ));
  gh.lazySingleton<OfferItemsCubit>(
      () => OfferItemsCubit(get<FirestoreGetAllOfferItemsUseCase>()));
  gh.lazySingleton<OtherUserCubit>(() => OtherUserCubit(
      get<FirestoreGetUserUseCase>(), get<FirestoreGetAllFcmTokenUseCase>()));
  gh.lazySingleton<PasswordResetCubit>(() => PasswordResetCubit(
      get<FirebaseSendResetPasswordUseCase>(), get<Validators>()));
  gh.lazySingleton<PostBarterCubit>(() => PostBarterCubit(
        get<FirebaseStorage>(),
        get<Uuid>(),
        get<Validators>(),
        get<Geoflutterfire>(),
        get<LocationCubit>(),
        get<FirestoreCreateBarterItemUseCase>(),
      ));
  gh.lazySingleton<PrivateListBarterModelCurrentUserCubit>(() =>
      PrivateListBarterModelCurrentUserCubit(
          get<FirestoreGetPrivateBarterItemsUsingUserIdUseCase>()));
  gh.lazySingleton<PublicListBarterModelCurrentUserCubit>(() =>
      PublicListBarterModelCurrentUserCubit(
          get<FirestoreGetPublicBarterItemsUsingUserIdUseCase>()));
  gh.lazySingleton<SavedBarterItemCubit>(() => SavedBarterItemCubit(
      get<FirestoreGetAllLikesBarterItemsUsingUserIdUseCase>()));
  gh.lazySingleton<SearchCubit>(() => SearchCubit(
        get<FirestoreBarterRepository>(),
        get<LocationCubit>(),
        get<RemoteConfigCubit>(),
      ));
  gh.lazySingleton<SignCubit>(() => SignCubit(
        get<FirebaseSignUpUseCase>(),
        get<FirebaseSignedInWithGoogleUserUseCase>(),
        get<FirebaseSignedInWithFacebookUserUseCase>(),
        get<FirebaseSignedInWithAppleUserUseCase>(),
        get<FirebaseSignedInWithCredentialsUserUseCase>(),
        get<FirebaseSignedInAnonymouslyUserUseCase>(),
        get<FirebaseLinkCredentialsWithEmailPasswordUserUseCase>(),
        get<FirebaseLinkCredentialsWithGoogleUserUseCase>(),
        get<FirebaseLinkCredentialsWithFacebookUserUseCase>(),
        get<FirebaseLinkCredentialsWithAppleUserUseCase>(),
        get<FirestoreCreateUserUseCase>(),
        get<FirestoreGetUserUseCase>(),
        get<Validators>(),
        get<FirebaseAuthUserRepository>(),
      ));
  gh.lazySingleton<UpdateBarterModelCurrentUserCubit>(() =>
      UpdateBarterModelCurrentUserCubit(
          get<FirestoreUpdateBarterItemUseCase>(), get<Validators>()));
  gh.lazySingleton<AllListBarterModelCurrentUserCubit>(() =>
      AllListBarterModelCurrentUserCubit(
          get<FirestoreGetAllBarterItemsUsingUserIdUseCase>(),
          get<FirestoreUpdateAllBarterItemUseCase>()));
  gh.lazySingleton<AuthCubit>(() => AuthCubit(
        get<FirebaseAuthUserRepository>(),
        get<FirebaseIsSignedInUserUseCase>(),
        get<FirestoreGetUserUseCase>(),
        get<FirebaseSignOutUserUseCase>(),
      ));
  gh.lazySingleton<BarterItemsCubit>(
      () => BarterItemsCubit(get<FirestoreGetAllBarterItemsUseCase>()));
  gh.lazySingleton<BarterMessageCubit>(() => BarterMessageCubit(
      get<FirebaseAuthUserRepository>(),
      get<FirestoreGetAllBarterMessagesUseCase>()));
  gh.lazySingleton<CurrentUserCubit>(() => CurrentUserCubit(
        get<FirebaseAuthUserRepository>(),
        get<FirestoreGetUserUseCase>(),
        get<FirestoreUpdateUserUseCase>(),
        get<FirestoreCreateSavedItemUseCase>(),
        get<FirestoreDeleteSavedItemUseCase>(),
        get<FirebaseStorage>(),
        get<AllListBarterModelCurrentUserCubit>(),
        get<Uuid>(),
        get<Geoflutterfire>(),
        get<Validators>(),
        get<LocationCubit>(),
      ));
  gh.lazySingleton<DeleteBarterModelCurrentUserCubit>(() =>
      DeleteBarterModelCurrentUserCubit(
          get<FirestoreDeleteBarterItemUseCase>()));
  gh.lazySingleton<LocalSharedDeleteAllSaveDataUseCase>(() =>
      LocalSharedDeleteAllSaveDataUseCase(
          localSharedPrefRepository: get<LocalSharedPrefRepository>()));
  gh.lazySingleton<LocalSharedPrefGetCurrentUserGeoLocationLatitudeUseCase>(
      () => LocalSharedPrefGetCurrentUserGeoLocationLatitudeUseCase(
          localSharedPrefRepository: get<LocalSharedPrefRepository>()));
  gh.lazySingleton<LocalSharedPrefGetCurrentUserGeoLocationLongitudeUseCase>(
      () => LocalSharedPrefGetCurrentUserGeoLocationLongitudeUseCase(
          localSharedPrefRepository: get<LocalSharedPrefRepository>()));
  gh.lazySingleton<LocalSharedPrefPersistUserGeoLocationUseCase>(() =>
      LocalSharedPrefPersistUserGeoLocationUseCase(
          localSharedPrefRepository: get<LocalSharedPrefRepository>()));
  gh.lazySingleton<NotificationCubit>(() => NotificationCubit(
        get<FirebaseAuthUserRepository>(),
        get<CurrentUserCubit>(),
        get<FirebaseMessaging>(),
        get<FirestoreGetAllBarterMessagesUseCase>(),
      ));
  return get;
}

class _$InjectableModule extends InjectableModule {}
