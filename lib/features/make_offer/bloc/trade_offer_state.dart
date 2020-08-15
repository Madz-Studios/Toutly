//part of 'trade_offer_bloc.dart';
//
//@freezed
//abstract class TradeOfferState implements _$TradeOfferState {
//  const TradeOfferState._();
//  const factory TradeOfferState({
//    @required Map<String, BarterModel> pickedBarterItems,
//    @required bool isMessageValid,
//    @required bool isUpdating,
//    @required bool isSubmitting,
//    @required bool isSuccess,
//    @required bool isFailure,
//    @required String info,
//  }) = _TradeOfferState;
//
//  factory TradeOfferState.empty() => TradeOfferState(
//        pickedBarterItems: Map<String, BarterModel>(),
//        isMessageValid: false,
//        isUpdating: false,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.addItem(
//          Map<String, BarterModel> pickedBarterItem, bool isMessageValid) =>
//      TradeOfferState(
//        pickedBarterItems: pickedBarterItem,
//        isMessageValid: isMessageValid,
//        isUpdating: true,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.removeItem(
//          Map<String, BarterModel> pickedBarterItem, bool isMessageValid) =>
//      TradeOfferState(
//        pickedBarterItems: pickedBarterItem,
//        isMessageValid: isMessageValid,
//        isUpdating: true,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.clearItems(
//          Map<String, BarterModel> pickedBarterItem, bool isMessageValid) =>
//      TradeOfferState(
//        pickedBarterItems: pickedBarterItem,
//        isMessageValid: isMessageValid,
//        isUpdating: true,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.updateDone(
//          Map<String, BarterModel> pickedBarterItem, bool isMessageValid) =>
//      TradeOfferState(
//        pickedBarterItems: pickedBarterItem,
//        isMessageValid: isMessageValid,
//        isUpdating: false,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.updateStart(
//          Map<String, BarterModel> pickedBarterItem, bool isMessageValid) =>
//      TradeOfferState(
//        pickedBarterItems: Map<String, BarterModel>(),
//        isMessageValid: isMessageValid,
//        isUpdating: false,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.loading() => TradeOfferState(
//        pickedBarterItems: Map<String, BarterModel>(),
//        isMessageValid: true,
//        isUpdating: false,
//        isSubmitting: true,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory TradeOfferState.failure(String info) => TradeOfferState(
//        pickedBarterItems: Map<String, BarterModel>(),
//        isMessageValid: true,
//        isUpdating: false,
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: true,
//        info: info,
//      );
//  factory TradeOfferState.success(String info) => TradeOfferState(
//        pickedBarterItems: Map<String, BarterModel>(),
//        isMessageValid: true,
//        isUpdating: false,
//        isSubmitting: false,
//        isSuccess: true,
//        isFailure: false,
//        info: info,
//      );
//
//  bool get isTradeOfferFormValid => pickedBarterItems.length > 0;
//}
