import 'dart:async';

import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  /// create Authentication bloc
  AuthenticationBloc({
    @required this.firebaseIsSignedInUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firebaseSignOutUserUseCase,
  });
  @override
  AuthenticationState get initialState => AuthenticationState.initial();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final isSignedIn =
            await firebaseIsSignedInUserUseCase.call(UseCaseNoParam.init());
        if (isSignedIn) {
          final firebaseUser =
              await firebaseGetUserUseCase.call(UseCaseNoParam.init());
          yield AuthenticationState.authenticated(firebaseUser);
        } else {
          yield AuthenticationState.unauthenticated();
        }
      },
      signedIn: (e) async* {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());
        yield AuthenticationState.authenticated(firebaseUser);
      },
      signedOut: (e) async* {
        await firebaseSignOutUserUseCase.call(UseCaseNoParam.init());
        yield AuthenticationState.unauthenticated();
      },
    );
  }
}
