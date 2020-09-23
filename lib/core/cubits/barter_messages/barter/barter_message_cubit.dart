import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:Toutly/shared/util/connection_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'barter_message_cubit.freezed.dart';
part 'barter_message_state.dart';

@lazySingleton
class BarterMessageCubit extends Cubit<BarterMessageState> {
  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final FirestoreGetAllBarterMessagesUseCase
      _firestoreGetAllBarterMessagesUseCase;
  BarterMessageCubit(
    this._firebaseAuthUserRepository,
    this._firestoreGetAllBarterMessagesUseCase,
  ) : super(BarterMessageState.empty());

  getCurrentBarterMessages() async {
    try {
      emit(BarterMessageState.loading());
      bool isConnected = await isConnectedToInternet();
      if (isConnected) {
        final User firebaseUser = _firebaseAuthUserRepository.getUser();
        final barterMessages = _firestoreGetAllBarterMessagesUseCase.call(
          UseCaseAllUserMessagesWithUserIdParam.init(userId: firebaseUser.uid),
        );
        emit(
          BarterMessageState.success(
              barterMessages: barterMessages,
              // offerMessages: offerMessages,
              info: 'Success'),
        );
      } else {
        emit(BarterMessageState.failure(
            info: 'There was no connection. Please connect to the internet.'));
      }
    } on PlatformException catch (platformException) {
      emit(BarterMessageState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(BarterMessageState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
