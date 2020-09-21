import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/connection_util.dart';
import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

@lazySingleton
class SearchCubit extends Cubit<SearchState> {
  final FirestoreBarterRepository _firestoreBarterRepository;
  final RemoteConfigCubit _remoteConfigCubit;
  final LocationCubit _locationCubit;
  SearchCubit(
    this._firestoreBarterRepository,
    this._locationCubit,
    this._remoteConfigCubit,
  ) : super(SearchState.empty());

  search({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double range,
    @required bool isNoLimitRange,
  }) async {
    debugPrint('''searchText = $searchText
        category = $category postedWithin = $postedWithin range = $range''');
    try {
      emit(SearchState.loading());

      if (searchText.isNotEmpty) {
        _searchUsingAlgolia(
          searchText: searchText,
          category: category,
          postedWithin: postedWithin,
          range: range,
          isNoLimitRange: isNoLimitRange,
        );
      } else {
        if (!isNoLimitRange) {
          _searchUsingAlgolia(
            searchText: searchText,
            category: category,
            postedWithin: postedWithin,
            range: range,
            isNoLimitRange: isNoLimitRange,
          );
        } else {
          _searchUsingFireStore(
            category: category,
            postedWithin: postedWithin,
            range: range,
            isNoLimitRange: isNoLimitRange,
          );
        }
      }
    } on PlatformException catch (platFormException) {
      emit(SearchState.failure(info: platFormException.message));
    } on Exception catch (e) {
      emit(SearchState.failure(info: e.toString()));
    }
  }

  void _searchUsingAlgolia({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double range,
    @required bool isNoLimitRange,
  }) async {
    Algolia algolia = Algolia.init(
      applicationId: _remoteConfigCubit.state.algoliaAppId,
      apiKey: _remoteConfigCubit.state.algoliaSearchApiKey,
    );
    final aroundLatLng =
        '${_locationCubit.state.geoPoint.latitude ?? 10.333333}, ${_locationCubit.state.geoPoint.longitude ?? 123.933334}';

    ///
    /// Perform Query
    ///
    final dateFilter = _processedDateFilterValue(postedWithin);
    String filter = "publicAccess=1"; //public access
    if (dateFilter.isNotEmpty) {
      filter = "publicAccess=1 AND $dateFilter";
    }

    //1000 = 1km
    if (range == 0) {
      range = 50.0 * 1000;
    } else {
      range = range * 1000;
    }

    int finalRange = range.toInt();
    bool isConnected = await isConnectedToInternet();
    if (isConnected) {
      AlgoliaQuery algoliaQuery;

      if (!isNoLimitRange) {
        algoliaQuery = algolia.instance
            .index('barter_index')
            .search('$searchText')
            .setFacetFilter('category: $category')
            .setAroundLatLng(aroundLatLng)
            .setAroundRadius(finalRange)
            .setFilters(filter);
      } else {
        algoliaQuery = algolia.instance
            .index('barter_index')
            .search('$searchText')
            .setFacetFilter('category: $category')
            .setFilters(filter);
      }
      final algoliaQuerySnapshot = await algoliaQuery.getObjects();
      emit(SearchState.success(
        algoliaQuerySnapshot: algoliaQuerySnapshot,
        info: 'Success',
      ));
    } else {
      emit(SearchState.failure(
          info: 'There was no connection. Please connect to the internet.'));
    }
  }

  void _searchUsingFireStore({
    String category,
    String postedWithin,
    double range,
    bool isNoLimitRange,
  }) async {
    bool isConnected = await isConnectedToInternet();
    if (isConnected) {
      List<BarterModel> listBarterModels = [];
      listBarterModels = await _firestoreBarterRepository.getAllBarterItems(
          category: category);
      emit(SearchState.success(
        listBarterModels: listBarterModels,
        info: 'Success',
      ));
    } else {
      emit(SearchState.failure(
          info: 'There was no connection. Please connect to the internet.'));
    }
  }

  String _processedDateFilterValue(String postedWithin) {
    final dateNow = DateTime.now();

    int postedWithinDate;

    String dateFilter;
    if (postedWithin.isEmpty) {
      postedWithinDate = DateTime(dateNow.year, dateNow.month - 2, dateNow.day)
          .millisecondsSinceEpoch; // last 60 days

      double postedInSeconds = postedWithinDate / 1000;

      dateFilter = 'dateUpdated._seconds >= ${postedInSeconds.toInt()}';
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
