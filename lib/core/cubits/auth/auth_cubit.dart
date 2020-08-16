import 'package:Toutly/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final FirebaseIsSignedInUserUseCase firebaseIsSignedInUserUseCase;
  final FirebaseSignOutUserUseCase firebaseSignOutUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  AuthCubit(
    this.firebaseIsSignedInUserUseCase,
    this.firebaseSignOutUserUseCase,
    this.firestoreGetUserUseCase,
  ) : super(AuthState.empty());

  authCheckRequested() async {
    emit(AuthState.loading());
    final isSignedIn =
        await firebaseIsSignedInUserUseCase.call(UseCaseNoParam.init());
    if (isSignedIn) {
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
