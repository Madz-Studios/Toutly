part of 'barter_items_cubit.dart';

@freezed
abstract class BarterItemsState with _$BarterItemsState {
  const factory BarterItemsState({
    BarterModel barterItem,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _BarterItemsState;

  factory BarterItemsState.empty() => BarterItemsState(
        barterItem: BarterModel(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterItemsState.loading() => BarterItemsState(
        barterItem: BarterModel(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterItemsState.failure(String info) => BarterItemsState(
        barterItem: BarterModel(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory BarterItemsState.success({BarterModel barterItem, String info}) =>
      BarterItemsState(
        barterItem: barterItem,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
