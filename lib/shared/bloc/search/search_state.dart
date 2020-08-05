part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.empty() = SearchStateEmpty;
  const factory SearchState.loading() = SearchStateLoading;
  const factory SearchState.loaded(AlgoliaQuerySnapshot data) =
      SearchStateLoaded;
  const factory SearchState.failure(String info) = SearchStateFailure;
}
