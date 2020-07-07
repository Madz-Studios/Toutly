import 'dart:async';

import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_delete_all_save_data_usecase.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_persist_user_geo_location_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

/// bloc for Authentication
@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final FirebaseIsSignedInUserUseCase firebaseIsSignedInUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirebaseSignOutUserUseCase firebaseSignOutUserUseCase;

  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final LocalSharedPrefPersistUserGeoLocationUseCase
      localSharedPrefPersistUserGeoLocation;
  final LocalSharedDeleteAllSaveDataUseCase localSharedDeleteAllSaveData;

  /// create Authentication bloc
  AuthenticationBloc({
    @required this.firebaseIsSignedInUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firebaseSignOutUserUseCase,
    @required this.firestoreGetUserUseCase,
    @required this.localSharedPrefPersistUserGeoLocation,
    @required this.localSharedDeleteAllSaveData,
  }) : super(AuthenticationState.initial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final isSignedIn =
            await firebaseIsSignedInUserUseCase.call(UseCaseNoParam.init());
        if (isSignedIn) {
          yield AuthenticationState.authenticated();
        } else {
          yield AuthenticationState.unauthenticated();
        }
      },
      signedIn: (e) async* {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        final userModel =
            await firestoreGetUserUseCase.call(UseCaseUserParamUserId.init(
          firebaseUser.uid,
        ));

        /// Saved geolocation data on the local.
        localSharedPrefPersistUserGeoLocation
            .call(UseCaseUserParamGeoLocation.init(
          userModel.geoLocation?.latitude ?? 0,
          userModel.geoLocation?.longitude ?? 0,
        ));

        yield AuthenticationState.authenticated();
      },
      signedOut: (e) async* {
        localSharedDeleteAllSaveData.call(UseCaseNoParam.init());
        await firebaseSignOutUserUseCase.call(UseCaseNoParam.init());
        yield AuthenticationState.unauthenticated();
      },
    );
  }
}
