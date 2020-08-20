part of 'saved_barter_items_cubit.dart';

@freezed
abstract class SavedBarterItemsState with _$SavedBarterItemsState {
  const factory SavedBarterItemsState({
    @required List<BarterModel> listings,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _SavedBarterItemsState;

  factory SavedBarterItemsState.empty() => SavedBarterItemsState(
        listings: [],
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SavedBarterItemsState.loading() => SavedBarterItemsState(
        listings: [],
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SavedBarterItemsState.failure({@required String info}) =>
      SavedBarterItemsState(
        listings: [],
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SavedBarterItemsState.success(
          {@required List<BarterModel> listings, @required String info}) =>
      SavedBarterItemsState(
        listings: listings,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
