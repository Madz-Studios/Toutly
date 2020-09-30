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
import '../repositories/barter_conversation_text/firestore_barter_conversation_text_repository.dart';
import '../repositories/barter_message/firestore_barter_message_repository.dart';
import '../repositories/barter_item/firestore_barter_repository.dart';
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
  gh.factory<FirestoreUserRepository>(
      () => FirestoreUserRepositoryImpl(get<FirebaseFirestore>()));
  gh.lazySingleton<Geoflutterfire>(() => injectableModule.geoFlutterFire);
  gh.lazySingleton<GeolocatorPlatform>(() => injectableModule.geoLocator);
  gh.lazySingleton<GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<NavigationCubit>(() => NavigationCubit());
  gh.lazySingleton<OtherUserCubit>(
      () => OtherUserCubit(get<FirestoreUserRepository>()));
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
        get<FirestoreBarterConversationTextRepository>(),
        get<FirestoreBarterMessageRepository>(),
        get<Uuid>(),
      ));
  gh.factory<FirebaseAuthUserRepository>(() => FirebaseAuthUserRepositoryImpl(
        firebaseAuth: get<FirebaseAuth>(),
        googleSignIn: get<GoogleSignIn>(),
        facebookLogin: get<FacebookLogin>(),
      ));
  gh.factory<FirestoreBarterRepository>(() => FirestoreBarterRepositoryImpl(
        get<Geoflutterfire>(),
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
      ));
  gh.lazySingleton<FirestoreUpdateUserUseCase>(() => FirestoreUpdateUserUseCase(
      firestoreUserRepository: get<FirestoreUserRepository>()));
  gh.factory<LocalSharedPrefRepository>(() =>
      LocalUserRepositoryImpl(sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<LocationCubit>(() =>
      LocationCubit(get<PrivacyServicesCubit>(), get<GeolocatorPlatform>()));
  gh.lazySingleton<MakeOfferCubit>(() => MakeOfferCubit(
        get<CloudFunctionCallCubit>(),
        get<FirestoreBarterMessageRepository>(),
        get<FirestoreBarterConversationTextRepository>(),
        get<Validators>(),
        get<Uuid>(),
      ));
  gh.lazySingleton<OfferItemsCubit>(
      () => OfferItemsCubit(get<FirestoreBarterRepository>()));
  gh.lazySingleton<PasswordResetCubit>(() =>
      PasswordResetCubit(get<FirebaseAuthUserRepository>(), get<Validators>()));
  gh.lazySingleton<PostBarterCubit>(() => PostBarterCubit(
        get<FirebaseStorage>(),
        get<Uuid>(),
        get<Validators>(),
        get<Geoflutterfire>(),
        get<LocationCubit>(),
        get<FirestoreBarterRepository>(),
      ));
  gh.lazySingleton<PrivateListBarterModelCurrentUserCubit>(() =>
      PrivateListBarterModelCurrentUserCubit(get<FirestoreBarterRepository>()));
  gh.lazySingleton<PublicListBarterModelCurrentUserCubit>(() =>
      PublicListBarterModelCurrentUserCubit(get<FirestoreBarterRepository>()));
  gh.lazySingleton<SavedBarterItemCubit>(
      () => SavedBarterItemCubit(get<FirestoreBarterRepository>()));
  gh.lazySingleton<SearchCubit>(() => SearchCubit(
        get<FirestoreBarterRepository>(),
        get<LocationCubit>(),
        get<RemoteConfigCubit>(),
      ));
  gh.lazySingleton<SignCubit>(() => SignCubit(
        get<FirestoreUserRepository>(),
        get<Validators>(),
        get<FirebaseAuthUserRepository>(),
      ));
  gh.lazySingleton<UpdateBarterModelCurrentUserCubit>(() =>
      UpdateBarterModelCurrentUserCubit(
          get<FirestoreBarterRepository>(), get<Validators>()));
  gh.lazySingleton<AllListBarterModelCurrentUserCubit>(() =>
      AllListBarterModelCurrentUserCubit(get<FirestoreBarterRepository>()));
  gh.lazySingleton<AuthCubit>(() => AuthCubit(
      get<FirebaseAuthUserRepository>(), get<FirestoreUserRepository>()));
  gh.lazySingleton<BarterItemsCubit>(
      () => BarterItemsCubit(get<FirestoreBarterRepository>()));
  gh.lazySingleton<BarterMessageCubit>(() => BarterMessageCubit(
      get<FirebaseAuthUserRepository>(),
      get<FirestoreBarterMessageRepository>()));
  gh.lazySingleton<CurrentUserCubit>(() => CurrentUserCubit(
        get<FirebaseAuthUserRepository>(),
        get<FirestoreUserRepository>(),
        get<FirestoreUpdateUserUseCase>(),
        get<FirebaseStorage>(),
        get<AllListBarterModelCurrentUserCubit>(),
        get<Uuid>(),
        get<Geoflutterfire>(),
        get<Validators>(),
        get<LocationCubit>(),
      ));
  gh.lazySingleton<DeleteBarterModelCurrentUserCubit>(() =>
      DeleteBarterModelCurrentUserCubit(get<FirestoreBarterRepository>()));
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
        get<FirestoreBarterMessageRepository>(),
      ));
  return get;
}

class _$InjectableModule extends InjectableModule {}
