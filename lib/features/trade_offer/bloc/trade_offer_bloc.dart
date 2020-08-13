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

part 'trade_offer_bloc.freezed.dart';
part 'trade_offer_event.dart';
part 'trade_offer_state.dart';

@lazySingleton
class TradeOfferBloc extends Bloc<TradeOfferEvent, TradeOfferState> {
  final FirestoreCreateBarterConversationTextUseCase
      firestoreCreateBarterConversationTextUseCase;

  final FirestoreCreateBarterMessagesUseCase
      firestoreCreateBarterMessagesUseCase;

  final Validators validators;
  final Uuid uuid;

  TradeOfferBloc(
    this.firestoreCreateBarterConversationTextUseCase,
    this.firestoreCreateBarterMessagesUseCase,
    this.validators,
    this.uuid,
  ) : super(TradeOfferState.empty());

  @override
  Stream<TradeOfferState> mapEventToState(TradeOfferEvent event) async* {
    yield* event.map(
      addItemToTrade: (e) async* {
        yield TradeOfferState.updateStart(
            state.pickedBarterItems, state.isMessageValid);
        Map<String, BarterModel> items = state.pickedBarterItems;
        items.putIfAbsent(e.barterModel.itemId, () => e.barterModel);

        yield TradeOfferState.updateDone(items, state.isMessageValid);
      },
      removeItemToTrade: (e) async* {
        yield TradeOfferState.updateStart(
            state.pickedBarterItems, state.isMessageValid);
        Map<String, BarterModel> items = state.pickedBarterItems;
        items.remove(e.barterModel.itemId);
        yield TradeOfferState.updateDone(items, state.isMessageValid);
      },
      clearItemToTrade: (e) async* {
        yield TradeOfferState.updateStart(
            state.pickedBarterItems, state.isMessageValid);
        Map<String, BarterModel> items = state.pickedBarterItems;
        items.clear();

        yield TradeOfferState.updateDone(items, state.isMessageValid);
      },
      messageChanged: (e) async* {
        yield state.copyWith(
          isMessageValid:
              validators.isValidTextLengthMoreThanOrEqualToFourChars(e.message),
          isUpdating: false,
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
          info: '',
        );
      },
      submitButtonOfferPressed: (e) async* {
        yield TradeOfferState.loading();

        try {
          String barterMessageId = uuid.v4();

          List<String> barterOfferItems = [];
          state.pickedBarterItems.forEach((key, barterItem) {
            barterOfferItems.add(barterItem.itemId);
          });

          BarterMessageModel barterMessageModel = BarterMessageModel(
            barterMessageId: barterMessageId,
            barterItemId: e.barterItem.itemId,
            barterOfferItems: barterOfferItems,
            userBarter: e.barterItem.userId,
            userOffer: e.currentUser.userId,
            isUserBarterRead: false,
            isUserOfferRead: false,
            dateCreated: DateTime.now(),
            dateUpdated: DateTime.now(),
            lastMessageText: e.message,
          );

          await firestoreCreateBarterMessagesUseCase.call(
            UseCaseBarterMessagesModelParam.init(
                messageId: barterMessageId,
                barterMessageModel: barterMessageModel),
          );

          BarterConversationTextModel barterConversationTextModel =
              BarterConversationTextModel(
            text: e.message,
            userId: e.currentUser.userId,
            dateCreated: DateTime.now(),
            barterMessageId: barterMessageId,
          );

          await firestoreCreateBarterConversationTextUseCase.call(
            UseCaseBarterConversationTextModelParam.init(
              messageId: barterMessageId,
              barterConversationTextModel: barterConversationTextModel,
            ),
          );

          yield TradeOfferState.success('Success');
        } on PlatformException catch (platFormException) {
          yield TradeOfferState.failure(platFormException.message);
        }
      },
    );
  }
}
