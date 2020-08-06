part of 'search_config_bloc.dart';

@freezed
abstract class SearchConfigState with _$SearchConfigState {
  const factory SearchConfigState({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double latitude,
    @required double longitude,
  }) = _SearchConfigState;

  factory SearchConfigState.init() => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        latitude: 0,
        longitude: 0,
      );

  factory SearchConfigState.setConfigData({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double latitude,
    @required double longitude,
  }) =>
      SearchConfigState(
        searchText: searchText,
        category: category,
        postedWithin: postedWithin,
        latitude: latitude,
        longitude: longitude,
      );
}
