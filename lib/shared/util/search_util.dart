import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
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

  void processInitialUserData(
    UserModel currentUser,
    LocationState locationState,
    RemoteConfigDataState remoteConfigDataState,
  ) {
    if (currentUser != null && currentUser.address == null) {
      if (currentUser.userId != null && currentUser.address == null) {
        String address = '${locationState?.placeMark?.subLocality ?? ''}, '
            '${locationState?.placeMark?.locality ?? ''} ';

        currentUser.geoLocation = locationState?.geoFirePoint?.geoPoint;
        currentUser.address = address;
        currentUser.geoHash = locationState?.geoFirePoint?.hash;

        _userBloc.add(UserEvent.updateCurrentLoggedInUser(currentUser));
      }

      if (locationState.geoFirePoint != null) {
        /// initial set of search config
        _searchConfigBloc.add(
          SearchConfigEvent.setConfig(
            searchText: '',
            category: '',
            postedWithin: '',
            latitude: locationState?.geoFirePoint?.latitude,
            longitude: locationState?.geoFirePoint?.longitude,
          ),
        );
      }

      /// initial home search
      if (currentUser.userId != null &&
          remoteConfigDataState.algoliaSearchApiKey.isNotEmpty &&
          remoteConfigDataState.algoliaAppId.isNotEmpty &&
          locationState.geoFirePoint.longitude != 0) {
        SearchUtil().searchSubmit(
          searchText: '',
          category: '',
          postedWithin: '',
          latitude: locationState.geoFirePoint.latitude,
          longitude: locationState.geoFirePoint.longitude,
          algoliaSearchApiKey: remoteConfigDataState.algoliaSearchApiKey,
          algoliaAppId: remoteConfigDataState.algoliaAppId,
        );
      }
    }
  }
}
