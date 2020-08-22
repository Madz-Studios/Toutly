import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/core/usecases/barter_conversation_text/firestore_create_barter_conversation_text_use_case.dart';
import 'package:Toutly/core/usecases/barter_conversation_text/firestore_get_all_conversation_from_message_use_case.dart';
import 'package:Toutly/core/usecases/param/barter_conversation_text/use_case_barter_conversation_text_param.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'conversation_cubit.freezed.dart';
part 'conversation_state.dart';

@lazySingleton
class ConversationCubit extends Cubit<ConversationState> {
  final FirestoreGetAllConversationFromMessagesUseCase
      firestoreGetAllConversationFromMessagesUseCase;

  final FirestoreCreateBarterConversationTextUseCase
      firestoreCreateBarterConversationTextUseCase;

  ConversationCubit(
    this.firestoreGetAllConversationFromMessagesUseCase,
    this.firestoreCreateBarterConversationTextUseCase,
  ) : super(ConversationState.empty());

  getAllTextConversation(String messageId) async {
    try {
      emit(ConversationState.loading());
      final barterMessages =
          firestoreGetAllConversationFromMessagesUseCase.call(
        UseCaseAllConversationFromMessagesWithMessageIdParam.init(
          messageId: messageId,
        ),
      );
      emit(ConversationState.success(
          barterMessages: barterMessages, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(ConversationState.failure(info: platformException.message));
    } on Exception catch (e) {
      emit(ConversationState.failure(info: e.toString()));
    }
  }

  sendConversationText({
    @required String barterMessageId,
    @required String userId,
    @required String message,
  }) {
    BarterConversationTextModel barterConversationTextModel =
        BarterConversationTextModel(
      text: message,
      userId: userId,
      dateCreated: DateTime.now(),
      barterMessageId: barterMessageId,
    );

    firestoreCreateBarterConversationTextUseCase.call(
      UseCaseBarterConversationTextModelParam.init(
        barterMessageId: barterMessageId,
        barterConversationTextModel: barterConversationTextModel,
      ),
    );
  }
}
