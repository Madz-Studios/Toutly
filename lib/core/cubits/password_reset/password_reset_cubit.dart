import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'password_reset_cubit.freezed.dart';
part 'password_reset_state.dart';

@lazySingleton
class PasswordResetCubit extends Cubit<PasswordResetState> {
  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final Validators _validators;

  PasswordResetCubit(
    this._firebaseAuthUserRepository,
    this._validators,
  ) : super(PasswordResetState.empty());

  emailChanged(String email) {
    emit(state.copyWith(
      isEmailValid: _validators.isValidEmail(email),
      isFailure: false,
      isSubmitting: false,
      isSuccess: false,
    ));
  }

  void sendPasswordResetPressed(String email) async {
    try {
      emit(PasswordResetState.loading());
      _firebaseAuthUserRepository.sendPasswordResetEmail(email);
      emit(PasswordResetState.success(info: 'Reset Password Success'));
    } on PlatformException catch (platformException) {
      emit(PasswordResetState.failure(info: platformException.message));
    } on Exception catch (e) {
      emit(PasswordResetState.failure(info: e.toString()));
    }
  }
}
