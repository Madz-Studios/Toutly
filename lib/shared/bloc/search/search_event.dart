part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = SearchEventInit;
  const factory SearchEvent.search({
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required String latitude,
    @required String longitude,
    @required String searchText,
    @required String category,
  }) = SearchEventSearch;
}
