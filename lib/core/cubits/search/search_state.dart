part of 'search_cubit.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    List<BarterModel> listBarterModels,
    AlgoliaQuerySnapshot algoliaQuerySnapshot,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String info,
  }) = _SearchState;

  factory SearchState.empty() => SearchState(
        listBarterModels: [],
        algoliaQuerySnapshot: AlgoliaQuerySnapshot(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchState.loading() => SearchState(
        listBarterModels: [],
        algoliaQuerySnapshot: AlgoliaQuerySnapshot(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchState.failure({String info}) => SearchState(
        listBarterModels: [],
        algoliaQuerySnapshot: AlgoliaQuerySnapshot(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SearchState.success({
    List<BarterModel> listBarterModels,
    AlgoliaQuerySnapshot algoliaQuerySnapshot,
    Stream<List<DocumentSnapshot>> streamListDocumentSnapshot,
    @required String info,
  }) =>
      SearchState(
        listBarterModels: listBarterModels,
        algoliaQuerySnapshot: algoliaQuerySnapshot,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
