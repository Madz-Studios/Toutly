part of 'search_cubit.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @required AlgoliaQuerySnapshot algoliaQuerySnapshot,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String info,
  }) = _SearchState;

  factory SearchState.empty() => SearchState(
        algoliaQuerySnapshot: AlgoliaQuerySnapshot(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchState.loading() => SearchState(
        algoliaQuerySnapshot: AlgoliaQuerySnapshot(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchState.failure(String info) => SearchState(
        algoliaQuerySnapshot: AlgoliaQuerySnapshot(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SearchState.success({
    @required AlgoliaQuerySnapshot algoliaQuerySnapshot,
    @required String info,
  }) =>
      SearchState(
        algoliaQuerySnapshot: algoliaQuerySnapshot,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
