import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'apple_sign_cubit.freezed.dart';
part 'apple_sign_state.dart';

@lazySingleton
class AppleSignCubit extends Cubit<AppleSignState> {
  AppleSignCubit() : super(AppleSignState.init());

  checkIfAppleIsAvailable() {
    bool isAppleSignInAvailable = false;
    if (Platform.isIOS) {
      isAppleSignInAvailable = true;
      emit(AppleSignState.setAppleSignInAvailable(isAppleSignInAvailable));
    }
  }
}
