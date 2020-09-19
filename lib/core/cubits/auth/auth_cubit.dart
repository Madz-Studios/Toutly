import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final FirebaseIsSignedInUserUseCase firebaseIsSignedInUserUseCase;
  final FirebaseGetUserUseCase _firebaseGetUserUseCase;
  final FirestoreGetUserUseCase _firestoreGetUserUseCase;
  final FirebaseSignOutUserUseCase firebaseSignOutUserUseCase;

  AuthCubit(
    this.firebaseIsSignedInUserUseCase,
    this._firebaseGetUserUseCase,
    this._firestoreGetUserUseCase,
    this.firebaseSignOutUserUseCase,
  ) : super(AuthState.empty());

  authCheckRequested() async {
    emit(AuthState.loading());
    final isSignedIn =
        firebaseIsSignedInUserUseCase.call(UseCaseNoParam.init());

    final User firebaseUser =
        _firebaseGetUserUseCase.call(UseCaseNoParam.init());

    final UserModel user = await _firestoreGetUserUseCase
        .call(UseCaseUserParamUserId.init(firebaseUser.uid ?? ''));

    if (user == null) {
      await firebaseSignOutUserUseCase.call(UseCaseNoParam.init());
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
    await firebaseSignOutUserUseCase.call(UseCaseNoParam.init());
    emit(AuthState.notAuthenticated('User Not Authenticated'));
  }
}
