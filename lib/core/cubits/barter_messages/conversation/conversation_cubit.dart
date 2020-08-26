import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/usecases/barter_conversation_text/firestore_create_barter_conversation_text_use_case.dart';
import 'package:Toutly/core/usecases/barter_conversation_text/firestore_get_all_conversation_from_message_use_case.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_update_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/param/barter_conversation_text/use_case_barter_conversation_text_param.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'conversation_cubit.freezed.dart';
part 'conversation_state.dart';

@lazySingleton
class ConversationCubit extends Cubit<ConversationState> {
  final FirestoreGetAllConversationFromMessagesUseCase
      firestoreGetAllConversationFromMessagesUseCase;

  final FirestoreCreateBarterConversationTextUseCase
      firestoreCreateBarterConversationTextUseCase;

  final FirestoreUpdateBarterMessagesUseCase
      firestoreUpdateBarterMessagesUseCase;

  final Uuid uuid;

  ConversationCubit(
    this.firestoreGetAllConversationFromMessagesUseCase,
    this.firestoreCreateBarterConversationTextUseCase,
    this.firestoreUpdateBarterMessagesUseCase,
    this.uuid,
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

  messageUserOfferReadUpdate({
    @required BarterMessageModel barterMessageModel,
  }) {
    ///current user the one who offer the item and will update the user offer read.
    barterMessageModel.isUserOfferRead = true;

    firestoreUpdateBarterMessagesUseCase.call(
      UseCaseBarterMessagesModelParam.init(
        barterMessageModel: barterMessageModel,
      ),
    );
  }

  messageUserBarterReadUpdate({
    @required BarterMessageModel barterMessageModel,
  }) {
    ///owner of the barter item will read the last message
    barterMessageModel.isUserBarterRead = true;

    firestoreUpdateBarterMessagesUseCase.call(
      UseCaseBarterMessagesModelParam.init(
        barterMessageModel: barterMessageModel,
      ),
    );
  }

  sendConversationText({
    @required String barterMessageId,
    @required String userId,
    @required String message,
    @required BarterMessageModel barterMessageModel,
  }) {
    BarterConversationTextModel barterConversationTextModel =
        BarterConversationTextModel(
      id: uuid.v4(),
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

    barterMessageModel.dateUpdated = DateTime.now();
    barterMessageModel.lastMessageText = message;

    ///if the message sender is the owner of the  bartered item make it false as 'already read'
    barterMessageModel.isUserBarterRead =
        userId == barterMessageModel.userBarter ? true : false;

    ///if the message sender is the one who offer make it true as 'already read'
    barterMessageModel.isUserOfferRead =
        userId == barterMessageModel.userOffer ? true : false;

    firestoreUpdateBarterMessagesUseCase.call(
      UseCaseBarterMessagesModelParam.init(
        barterMessageModel: barterMessageModel,
      ),
    );
  }
}
