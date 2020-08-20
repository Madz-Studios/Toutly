part of 'offer_items_cubit.dart';

@freezed
abstract class OfferItemsState with _$OfferItemsState {
  const factory OfferItemsState({
    @required List<BarterModel> offerItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _OfferItemsState;

  factory OfferItemsState.empty() => OfferItemsState(
        offerItems: [],
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory OfferItemsState.loading() => OfferItemsState(
        offerItems: [],
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory OfferItemsState.failure(String info) => OfferItemsState(
        offerItems: [],
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory OfferItemsState.success(
          {List<BarterModel> offerItems, String info}) =>
      OfferItemsState(
        offerItems: offerItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
