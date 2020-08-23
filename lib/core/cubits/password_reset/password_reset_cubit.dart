import 'package:Toutly/core/usecases/auth/firebase_send_reset_password_usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'password_reset_cubit.freezed.dart';
part 'password_reset_state.dart';

@lazySingleton
class PasswordResetCubit extends Cubit<PasswordResetState> {
  final FirebaseSendResetPasswordUseCase firebaseSendResetPasswordUseCase;
  final Validators validators;

  PasswordResetCubit(
    this.firebaseSendResetPasswordUseCase,
    this.validators,
  ) : super(PasswordResetState.empty());

  emailChanged(String email) {
    emit(state.copyWith(
      isEmailValid: validators.isValidEmail(email),
      isFailure: false,
      isSubmitting: false,
      isSuccess: false,
    ));
  }

  void sendPasswordResetPressed(String email) async {
    try {
      emit(PasswordResetState.loading());
      firebaseSendResetPasswordUseCase.call(
        UseCaseUserParamEmail.init(email),
      );
      emit(PasswordResetState.success(info: 'Reset Password Success'));
    } on PlatformException catch (platformException) {
      emit(PasswordResetState.failure(info: platformException.message));
    } on Exception catch (e) {
      emit(PasswordResetState.failure(info: e.toString()));
    }
  }
}
