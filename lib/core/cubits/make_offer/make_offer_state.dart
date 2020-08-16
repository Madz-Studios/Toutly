part of 'make_offer_cubit.dart';

@freezed
abstract class MakeOfferState implements _$MakeOfferState {
  const MakeOfferState._();
  const factory MakeOfferState({
    @required Map<String, BarterModel> pickedBarterItems,
    @required bool isMessageValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _MakeOfferState;

  factory MakeOfferState.empty() => MakeOfferState(
        pickedBarterItems: Map<String, BarterModel>(),
        isMessageValid: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory MakeOfferState.failure(String info) => MakeOfferState(
        pickedBarterItems: Map<String, BarterModel>(),
        isMessageValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );
  factory MakeOfferState.success(String info) => MakeOfferState(
        pickedBarterItems: Map<String, BarterModel>(),
        isMessageValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  bool get isMakeOfferFormValid => pickedBarterItems.length > 0;
}
