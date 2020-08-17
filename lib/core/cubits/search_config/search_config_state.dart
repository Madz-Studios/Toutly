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
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String info,
  }) = _SearchConfigState;

  factory SearchConfigState.empty() => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        latitude: 0.0,
        longitude: 0.0,
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchConfigState.loading() => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        latitude: 0.0,
        longitude: 0.0,
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchConfigState.failure(String info) => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        latitude: 0.0,
        longitude: 0.0,
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SearchConfigState.success({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double latitude,
    @required double longitude,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required String info,
  }) =>
      SearchConfigState(
        searchText: searchText,
        category: category,
        postedWithin: postedWithin,
        latitude: latitude,
        longitude: longitude,
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}

//@required String searchText,
//@required String category,
//@required String postedWithin,
//@required double latitude,
//@required double longitude,
//@required String algoliaAppId,
//@required String algoliaSearchApiKey,
