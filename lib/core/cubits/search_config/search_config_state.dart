part of 'search_config_cubit.dart';

@freezed
abstract class SearchConfigState with _$SearchConfigState {
  const factory SearchConfigState({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double latitude,
    @required double longitude,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) = _SearchConfigState;

  factory SearchConfigState.init() => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        latitude: 0,
        longitude: 0,
      );

  factory SearchConfigState.setConfigData({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required double latitude,
    @required double longitude,
  }) =>
      SearchConfigState(
        searchText: searchText,
        category: category,
        postedWithin: postedWithin,
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
        latitude: latitude,
        longitude: longitude,
      );
}
