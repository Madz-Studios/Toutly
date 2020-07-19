part of 'trade_offer_bloc.dart';

@freezed
abstract class TradeOfferState implements _$TradeOfferState {
  const TradeOfferState._();
  const factory TradeOfferState({
    @required Map<String, BarterModel> pickedBarterItem,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _TradeOfferState;

  factory TradeOfferState.empty() => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory TradeOfferState.loading() => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory TradeOfferState.failure() => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: '',
      );
  factory TradeOfferState.success() => TradeOfferState(
        pickedBarterItem: Map<String, BarterModel>(),
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: '',
      );
}
