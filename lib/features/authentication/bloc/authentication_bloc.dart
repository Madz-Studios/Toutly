import 'dart:async';

import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_delete_all_save_data_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_persist_user_email_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_persist_user_geo_location_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_persist_user_id_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final FirebaseIsSignedInUserUseCase firebaseIsSignedInUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirebaseSignOutUserUseCase firebaseSignOutUserUseCase;

  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final LocalSharedPrefPersistUserIdUseCase localSharedPrefPersistUserId;
  final LocalSharedPrefPersistUserEmailUseCase localSharedPrefPersistUserEmail;
  final LocalSharedPrefPersistUserGeoLocationUseCase
      localSharedPrefPersistUserGeoLocation;
  final LocalSharedDeleteAllSaveDataUseCase localSharedDeleteAllSaveData;

  AuthenticationBloc({
    @required this.firebaseIsSignedInUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firebaseSignOutUserUseCase,
    @required this.firestoreGetUserUseCase,
    @required this.localSharedPrefPersistUserId,
    @required this.localSharedPrefPersistUserEmail,
    @required this.localSharedPrefPersistUserGeoLocation,
    @required this.localSharedDeleteAllSaveData,
  });
  @override
  AuthenticationState get initialState => AuthenticationState.initial();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        try {
          ///If there is already a User Signed In the local firebase cache, sign in the User
          final isSignedIn =
              await firebaseIsSignedInUserUseCase.call(UseCaseNoParam.init());
          if (isSignedIn) {
            yield AuthenticationState.authenticated();
          } else {
            yield AuthenticationState.unAuthenticated();
          }
        } on PlatformException catch (platFormException) {
          yield AuthenticationState.error(info: platFormException.message);
        }
      },
      signedIn: (e) async* {
        try {
          final firebaseUser =
              await firebaseGetUserUseCase.call(UseCaseNoParam.init());

          final userModel =
              await firestoreGetUserUseCase.call(UseCaseUserParamUserId.init(
            firebaseUser.uid,
          ));

          /// Saved user id, user email and user geolocation data on the local.
          await localSharedPrefPersistUserId.call(UseCaseUserParamUserId.init(
            userModel.userId,
          ));
          await localSharedPrefPersistUserEmail.call(UseCaseUserParamEmail.init(
            userModel.email,
          ));
          await localSharedPrefPersistUserGeoLocation
              .call(UseCaseUserParamGeoLocation.init(
            userModel.geoLocation?.latitude ?? 0,
            userModel.geoLocation?.longitude ?? 0,
          ));

          /// Authenticate the user
          yield AuthenticationState.authenticated();
        } on PlatformException catch (platFormException) {
          yield AuthenticationState.error(info: platFormException.message);
        }
      },
      signedOut: (e) async* {
        try {
          /// Delete all the saved user id, user email and user geolocation data on the local.
          await localSharedDeleteAllSaveData.call(UseCaseNoParam.init());

          ///sign out the user
          await firebaseSignOutUserUseCase.call(UseCaseNoParam.init());
          yield AuthenticationState.unAuthenticated();
        } on PlatformException catch (platFormException) {
          yield AuthenticationState.error(info: platFormException.message);
        }
      },
    );
  }
}
