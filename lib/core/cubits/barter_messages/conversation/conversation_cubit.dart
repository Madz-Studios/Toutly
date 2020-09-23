import 'package:Toutly/core/cubits/cloud_functions_call/cloud_function_call_cubit.dart';
import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/barter_conversation_text/firestore_barter_conversation_text_repository.dart';
import 'package:Toutly/core/repositories/barter_message/firestore_barter_message_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'conversation_cubit.freezed.dart';
part 'conversation_state.dart';

@lazySingleton
class ConversationCubit extends Cubit<ConversationState> {
  final CloudFunctionCallCubit _cloudFunctionCallCubit;

  final FirestoreBarterConversationTextRepository
      _firestoreBarterConversationTextRepository;
  final FirestoreBarterMessageRepository _firestoreBarterMessagesRepository;

  final Uuid _uuid;

  ConversationCubit(
    this._cloudFunctionCallCubit,
    this._firestoreBarterConversationTextRepository,
    this._firestoreBarterMessagesRepository,
    this._uuid,
  ) : super(ConversationState.empty());

  getAllTextConversation(String messageId) async {
    try {
      emit(ConversationState.loading());
      final Stream<QuerySnapshot> barterMessages =
          _firestoreBarterConversationTextRepository
              .getStreamAllConversationUsingMessageId(messageId);
      emit(ConversationState.success(
          barterMessages: barterMessages, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(ConversationState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(ConversationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  messageUserOfferReadUpdate({
    @required BarterMessageModel barterMessageModel,
  }) async {
    try {
      await _firestoreBarterMessagesRepository
          .updateBarterMessage(barterMessageModel);
    } on PlatformException catch (platformException) {
      emit(ConversationState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(ConversationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  messageUserBarterReadUpdate({
    @required BarterMessageModel barterMessageModel,
  }) async {
    await _firestoreBarterMessagesRepository
        .updateBarterMessage(barterMessageModel);
  }

  sendConversationText({
    @required String barterMessageId,
    @required UserModel currentUser,
    @required UserModel otherUserModel,
    @required String message,
    @required BarterMessageModel barterMessageModel,
  }) async {
    try {
      BarterConversationTextModel barterConversationTextModel =
          BarterConversationTextModel(
        id: _uuid.v4(),
        text: message,
        userId: currentUser.userId,
        dateCreated: DateTime.now(),
        barterMessageId: barterMessageId,
      );

      await _firestoreBarterConversationTextRepository
          .createBarterConversationText(
              barterMessageId, barterConversationTextModel);

      barterMessageModel.dateUpdated = DateTime.now();
      barterMessageModel.isReadLastMessage = false;
      barterMessageModel.lastMessageText = message;
      barterMessageModel.userLastMessageSender = currentUser.userId;

      await _firestoreBarterMessagesRepository
          .updateBarterMessage(barterMessageModel);

      _cloudFunctionCallCubit.sendMessageNotification(
        tokens: otherUserModel.fcmToken,
        title: '${currentUser.name} sent you a message!',
        body: message,
      );
    } on PlatformException catch (platformException) {
      emit(ConversationState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(ConversationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
