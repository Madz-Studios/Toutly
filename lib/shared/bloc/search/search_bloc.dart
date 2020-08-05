import 'package:algolia/algolia.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@lazySingleton
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.empty());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield* event.map(
      init: (e) async* {},
      search: (e) async* {
        yield SearchState.loading();

        try {
          Algolia algolia = Algolia.init(
            applicationId: e.algoliaAppId,
            apiKey: e.algoliaSearchApiKey,
          );

          final aroundLatLng = '${e.latitude}, ${e.longitude}';

          print('aroundLatLng = $aroundLatLng');

          ///
          /// Perform Query
          ///
          AlgoliaQuery query = algolia.instance
              .index('barter_index')
              .search('${e.searchText}')
              .setFacetFilter('category: ${e.category}')
              .setAroundLatLng(aroundLatLng)
              .setAroundRadius(5000) //5,000 meters or 5 km
              .setFilters('publicAccess=1'); //only public item can be shown.

          final data = await query.getObjects();

          yield SearchState.loaded(data);
        } on PlatformException catch (platformException) {
          yield SearchState.failure(platformException.message);
        } on Exception catch (e) {
          yield SearchState.failure(e.toString());
        }
      },
    );
  }
}
