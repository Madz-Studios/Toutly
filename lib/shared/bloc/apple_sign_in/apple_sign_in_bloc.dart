import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'apple_sign_in_bloc.freezed.dart';
part 'apple_sign_in_event.dart';
part 'apple_sign_in_state.dart';

@lazySingleton
class AppleSignInBloc extends Bloc<AppleSignInEvent, AppleSignInState> {
  AppleSignInBloc() : super(AppleSignInState.init());

  @override
  Stream<AppleSignInState> mapEventToState(AppleSignInEvent event) async* {
    yield* event.map(
      init: (_) async* {},
      checkIfAppleIsAvailable: (e) async* {
        bool isAppleSignInAvailable = false;
        if (Platform.isIOS) {
          isAppleSignInAvailable = true;
          yield AppleSignInState.setAppleSignInAvailable(
              isAppleSignInAvailable);
        }
      },
    );
  }
}
