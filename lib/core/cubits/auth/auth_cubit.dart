import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final FirestoreUserRepository _firestoreUserRepository;

  AuthCubit(
    this._firebaseAuthUserRepository,
    this._firestoreUserRepository,
  ) : super(AuthState.empty());

  authCheckRequested() async {
    emit(AuthState.loading());
    final bool isSignedIn = _firebaseAuthUserRepository.isSignedIn();

    final User firebaseUser = _firebaseAuthUserRepository.getUser();

    final UserModel user = await _firestoreUserRepository
        .getUserUsingUserId(firebaseUser.uid ?? '');

    if (user == null) {
      await _firebaseAuthUserRepository.signOut();
    }
    if (isSignedIn && user != null) {
      emit(AuthState.authenticated('User Authenticated'));
    } else {
      emit(AuthState.notAuthenticated('User Not Authenticated'));
    }
  }

  signedIn() {
    emit(AuthState.authenticated('User Authenticated'));
  }

  signedOut() async {
    emit(AuthState.loading());
    await _firebaseAuthUserRepository.signOut();
    emit(AuthState.notAuthenticated('User Not Authenticated'));
  }
}
