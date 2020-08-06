part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = SearchEventInit;
  const factory SearchEvent.search({
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required double latitude,
    @required double longitude,
    @required String searchText,
    @required String category,
    @required String postedWithin,
  }) = SearchEventSearch;
}
