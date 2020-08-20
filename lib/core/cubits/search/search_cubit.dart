import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

@lazySingleton
class SearchCubit extends Cubit<SearchState> {
  final Geolocator geoLocator;
  SearchCubit(
    this.geoLocator,
  ) : super(SearchState.empty());

  search({
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required double latitude,
    @required double longitude,
    @required String searchText,
    @required String category,
    @required String postedWithin,
  }) async {
    try {
      emit(SearchState.loading());
      Algolia algolia = Algolia.init(
        applicationId: algoliaAppId,
        apiKey: algoliaSearchApiKey,
      );

      final aroundLatLng = '$latitude, $longitude';
      final dateFilter = _processedDateFilterValue(postedWithin);

      ///
      /// Perform Query
      ///

      String filter = "publicAccess=1"; //public access
      if (dateFilter.isNotEmpty) {
        filter = "publicAccess=1 AND $dateFilter";
      }

      AlgoliaQuery algoliaQuery = algolia.instance
          .index('barter_index')
          .search('$searchText')
          .setFacetFilter('category: $category')
          .setAroundLatLng(aroundLatLng)
          .setAroundRadius(5000) //5,000 meters or 5 km
          .setFilters(filter);

      final algoliaQuerySnapshot = await algoliaQuery.getObjects();
      emit(SearchState.success(
        algoliaQuerySnapshot: algoliaQuerySnapshot,
        info: 'Success',
      ));
    } on PlatformException catch (platFormException) {
      emit(SearchState.failure(platFormException.message));
    }
  }

  String _processedDateFilterValue(String postedWithin) {
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

    debugPrint(
        'SearchCubit _processedDateFilterValue date filter is = $postedWithin.');
    debugPrint(
        'SearchCubit _processedDateFilterValue dateFilter value = $dateFilter.');

    return dateFilter;
  }
}