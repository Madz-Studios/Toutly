part of 'trade_offer_bloc.dart';

@freezed
abstract class TradeOfferState implements _$TradeOfferState {
  const TradeOfferState._();
  const factory TradeOfferState({
    @required Map<String, BarterModel> pickedBarterItem,
    @required bool isMessageValid,
    @required bool isUpdating,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _TradeOfferState;

  factory TradeOfferState.empty() => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isMessageValid: true,
        isUpdating: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory TradeOfferState.addItem(
          Map<String, BarterModel> pickedBarterItem, String info) =>
      TradeOfferState(
        pickedBarterItem: pickedBarterItem,
        isMessageValid: true,
        isUpdating: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: info,
      );

  factory TradeOfferState.removeItem(
          Map<String, BarterModel> pickedBarterItem, String info) =>
      TradeOfferState(
        pickedBarterItem: pickedBarterItem,
        isMessageValid: true,
        isUpdating: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: info,
      );

  factory TradeOfferState.clearItems(
          Map<String, BarterModel> pickedBarterItem, String info) =>
      TradeOfferState(
        pickedBarterItem: pickedBarterItem,
        isMessageValid: true,
        isUpdating: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: info,
      );

  factory TradeOfferState.updateDone(
          Map<String, BarterModel> pickedBarterItem, String info) =>
      TradeOfferState(
        pickedBarterItem: pickedBarterItem,
        isMessageValid: true,
        isUpdating: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: info,
      );

  factory TradeOfferState.loading() => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isMessageValid: true,
        isUpdating: false,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory TradeOfferState.failure(String info) => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isMessageValid: true,
        isUpdating: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );
  factory TradeOfferState.success(String info) => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isMessageValid: true,
        isUpdating: false,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  bool get isTradeOfferFormValid => pickedBarterItem.length > 0;
}
