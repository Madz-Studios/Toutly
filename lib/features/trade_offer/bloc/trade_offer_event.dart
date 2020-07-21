part of 'trade_offer_bloc.dart';

@freezed
abstract class TradeOfferEvent with _$TradeOfferEvent {
  const factory TradeOfferEvent.addItemToTrade(BarterModel barterModel) =
      TradeOfferAddItemToTrade;
  const factory TradeOfferEvent.removeItemToTrade(BarterModel barterModel) =
      TradeOfferRemovetemToTrade;

  const factory TradeOfferEvent.clearItemToTrade() = TradeOfferClearItemToTrade;

  const factory TradeOfferEvent.messageChanged({String message}) =
      TradeOfferMessageChanged;

  const factory TradeOfferEvent.submitButtonOfferPressed() =
      TradeOfferEventSubmitButtonOfferPressed;
}
