import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
import 'package:Toutly/shared/bloc/search_config/search_config_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:flutter/foundation.dart';

class SearchUtil {
  final _searchBloc = getIt<SearchBloc>();
  final _searchConfigBloc = getIt<SearchConfigBloc>();
  final _userBloc = getIt<UserBloc>();

  void searchSubmit({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double latitude,
    @required double longitude,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) {
    debugPrint('_searchSubmit searchText = $searchText');

    _searchBloc.add(
      SearchEvent.search(
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
        latitude: latitude,
        longitude: longitude,
        searchText: searchText,
        category: category,
        postedWithin: postedWithin,
      ),
    );

    _searchConfigBloc.add(
      SearchConfigEvent.setConfig(
        searchText: searchText,
        category: category,
        postedWithin: postedWithin,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }
}
