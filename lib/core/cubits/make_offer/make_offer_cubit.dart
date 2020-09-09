import 'package:Toutly/core/cubits/cloud_functions_call/cloud_function_call_cubit.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/barter_conversation_text/firestore_create_barter_conversation_text_use_case.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_create_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/param/barter_conversation_text/use_case_barter_conversation_text_param.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'make_offer_cubit.freezed.dart';
part 'make_offer_state.dart';

@lazySingleton
class MakeOfferCubit extends Cubit<MakeOfferState> {
  final CloudFunctionCallCubit _cloudFunctionCallCubit;
  final FirestoreCreateBarterConversationTextUseCase
      firestoreCreateBarterConversationTextUseCase;

  final FirestoreCreateBarterMessagesUseCase
      firestoreCreateBarterMessagesUseCase;

  final Validators validators;
  final Uuid uuid;

  MakeOfferCubit(
    this._cloudFunctionCallCubit,
    this.firestoreCreateBarterConversationTextUseCase,
    this.firestoreCreateBarterMessagesUseCase,
    this.validators,
    this.uuid,
  ) : super(MakeOfferState.empty());

  messageChanged(String message) {
    emit(state.copyWith(
      isMessageValid:
          validators.isValidTextLengthMoreThanOrEqualToFourChars(message),
    ));
  }

  addItemToOffer(BarterModel barterModel) {
    Map<String, BarterModel> newItems = Map.from(state.pickedBarterItems);
    newItems.putIfAbsent(barterModel.itemId, () => barterModel);
    emit(state.copyWith(
      pickedBarterItems: newItems,
    ));
  }

  removeItemToOffer(BarterModel barterModel) {
    Map<String, BarterModel> newItems = Map.from(state.pickedBarterItems);
    newItems.remove(barterModel.itemId);
    emit(state.copyWith(
      pickedBarterItems: newItems,
    ));
  }

  reset() {
    emit(MakeOfferState.empty());
  }

  submitButtonOfferPressed({
    @required UserModel currentUser,
    @required UserModel otherUser,
    @required BarterModel otherUserBarterModel,
    @required String message,
  }) async {
    emit(state.copyWith(
      isSubmitting: true,
    ));

    try {
      String barterMessageId = uuid.v4();

      List<String> barterOfferItems = [];
      state.pickedBarterItems.forEach((key, barterItem) {
        barterOfferItems.add(barterItem.itemId);
      });

      BarterMessageModel barterMessageModel = BarterMessageModel(
        barterMessageId: barterMessageId,
        usersInvolved: [currentUser.userId, otherUser.userId],
        barterItemId: otherUserBarterModel.itemId,
        barterOfferItems: barterOfferItems,
        userBarter: otherUserBarterModel.userId,
        userOffer: currentUser.userId,
        isReadLastMessage: false,
        userLastMessageSender: currentUser.userId,

        ///because it was a user who offer and the one who sent the message
        dateCreated: DateTime.now(),
        dateUpdated: DateTime.now(),
        lastMessageText: message,
      );

      await firestoreCreateBarterMessagesUseCase.call(
        UseCaseBarterMessagesModelParam.init(
            barterMessageModel: barterMessageModel),
      );

      BarterConversationTextModel barterConversationTextModel =
          BarterConversationTextModel(
        id: uuid.v4(),
        text: message,
        userId: currentUser.userId,
        dateCreated: DateTime.now(),
        barterMessageId: barterMessageId,
      );

      await firestoreCreateBarterConversationTextUseCase.call(
        UseCaseBarterConversationTextModelParam.init(
          barterMessageId: barterMessageId,
          barterConversationTextModel: barterConversationTextModel,
        ),
      );

      ///send fcm notification
      _cloudFunctionCallCubit.sendMessageNotification(
        tokens: otherUser.fcmToken,
        title: '${currentUser.name} sent you an offer!',
        body: message,
      );

      emit(MakeOfferState.success('Success'));
    } on PlatformException catch (platFormException) {
      emit(MakeOfferState.failure(info: platFormException.message));
    } on Exception catch (e) {
      emit(MakeOfferState.failure(info: e.toString()));
    }
  }
}
