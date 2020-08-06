import 'package:Toutly/shared/constants/app_constants.dart';
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

          final postedWithin = e.postedWithin;
          final aroundLatLng = '${e.latitude}, ${e.longitude}';
          final dateFilter = processedDateFilterValue(postedWithin);

          ///
          /// Perform Query
          ///

          String filter = "publicAccess=1"; //public access
          if (dateFilter.isNotEmpty) {
            filter = "publicAccess=1 AND $dateFilter";
          }

          AlgoliaQuery query = algolia.instance
              .index('barter_index')
              .search('${e.searchText}')
              .setFacetFilter('category: ${e.category}')
              .setAroundLatLng(aroundLatLng)
              .setAroundRadius(5000) //5,000 meters or 5 km
              .setFilters(filter);

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

  String processedDateFilterValue(String postedWithin) {
    final dateNow = DateTime.now();

    int postedWithinDate;

    String dateFilter;
    if (postedWithin.isEmpty) {
      dateFilter = '';
    } else if (postedWithin == AppConstants.filterByTimeList[1]) {
      postedWithinDate = DateTime(dateNow.year, dateNow.month, dateNow.day - 1)
          .millisecondsSinceEpoch; // last 24hr

      double postedInSeconds = postedWithinDate / 1000;

      dateFilter = 'dateUpdated._seconds >= ${postedInSeconds.toInt()} ';
    } else if (postedWithin == AppConstants.filterByTimeList[2]) {
      postedWithinDate = DateTime(dateNow.year, dateNow.month, dateNow.day - 7)
          .millisecondsSinceEpoch; // last 7 days

      double postedInSeconds = postedWithinDate / 1000;

      dateFilter = 'dateUpdated._seconds >= ${postedInSeconds.toInt()}';
    } else {
      postedWithinDate = DateTime(dateNow.year, dateNow.month - 1, dateNow.day)
          .millisecondsSinceEpoch; // last 30 days

      double postedInSeconds = postedWithinDate / 1000;

      dateFilter = 'dateUpdated._seconds >= ${postedInSeconds.toInt()}';
    }

    print('date filter is = $postedWithin.');
    print('dateFilter value = $dateFilter.');

    return dateFilter;
  }
}
