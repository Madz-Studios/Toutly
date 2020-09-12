import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'barter_message_cubit.freezed.dart';
part 'barter_message_state.dart';

@lazySingleton
class BarterMessageCubit extends Cubit<BarterMessageState> {
  final FirestoreGetAllBarterMessagesUseCase
      _firestoreGetAllBarterMessagesUseCase;
  BarterMessageCubit(
    this._firestoreGetAllBarterMessagesUseCase,
  ) : super(BarterMessageState.empty());

  getBarterMessages(String userId) async {
    try {
      emit(BarterMessageState.loading());
      final barterMessages = _firestoreGetAllBarterMessagesUseCase.call(
        UseCaseAllUserMessagesWithUserIdParam.init(userId: userId),
      );
      emit(
        BarterMessageState.success(
            barterMessages: barterMessages,
            // offerMessages: offerMessages,
            info: 'Success'),
      );
    } on PlatformException catch (platformException) {
      emit(BarterMessageState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(BarterMessageState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
