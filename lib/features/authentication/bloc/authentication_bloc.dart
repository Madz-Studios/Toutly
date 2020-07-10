import 'dart:async';

import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
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
  final FirebaseSignOutUserUseCase firebaseSignOutUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  AuthenticationBloc(
    this.firebaseIsSignedInUserUseCase,
    this.firebaseSignOutUserUseCase,
    this.firestoreGetUserUseCase,
  ) : super(AuthenticationState.initial());

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
        yield AuthenticationState.authenticated();
      },
      signedOut: (e) async* {
        await firebaseSignOutUserUseCase.call(UseCaseNoParam.init());
        yield AuthenticationState.unauthenticated();
      },
    );
  }
}
