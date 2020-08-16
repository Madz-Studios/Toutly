import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:flutter/foundation.dart';

class SearchUtil {
  final _searchCubit = getIt<SearchCubit>();

  void searchSubmit({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double latitude,
    @required double longitude,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) {
    debugPrint(
        '''SearchUtil _searchSubmit searchText = $searchText  category = $category  '
        postedWithin = $postedWithin  algoliaAppId = $algoliaAppId algoliaSearchApiKey = $algoliaSearchApiKey 
            'latitude = $latitude longitude = $longitude''');

    _searchCubit.search(
      algoliaAppId: algoliaAppId,
      algoliaSearchApiKey: algoliaSearchApiKey,
      latitude: latitude,
      longitude: longitude,
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
    );
  }
}
