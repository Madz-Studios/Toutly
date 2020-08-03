import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/home/bloc/home_bloc.dart';
import 'package:Toutly/features/home/widgets/barter_item_feed.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeBloc = getIt<HomeBloc>();
  final _remoteConfigBloc = getIt<RemoteConfigDataBloc>();
  final _locationBloc = getIt<LocationBloc>();
  final _userBloc = getIt<UserBloc>();

  @override
  void initState() {
    super.initState();

    _remoteConfigBloc.add(RemoteConfigDataEvent.loadConfigData());

    _userBloc.add(UserEvent.getCurrentLoggedInUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (userContext, userState) {
        UserModel currentUser = userState.userModel;
        if (currentUser != null && currentUser.address == null) {
          _locationBloc.add(LocationEvent.getInitialUserLocation());
        }
        return BlocBuilder<LocationBloc, LocationState>(
          builder: (locationContext, locationState) {
            if (currentUser.userId != null &&
                currentUser.address == null &&
                locationState.geoFirePoint != null) {
              String address = '${locationState?.placeMark?.name ?? ''}, '
                  '${locationState?.placeMark?.subLocality ?? ''}, '
                  '${locationState?.placeMark?.locality ?? ''} ';

              currentUser.geoLocation = locationState?.geoFirePoint?.geoPoint;
              currentUser.address = address;
              currentUser.geoHash = locationState?.geoFirePoint?.hash;

              _userBloc.add(UserEvent.updateCurrentLoggedInUser(currentUser));
            }

            return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
              builder: (remoteConfigContext, remoteConfigState) {
                return FutureBuilder(
                  future: _homeBloc.getBarterFeeds(
                    remoteConfigState.algoliaAppId,
                    remoteConfigState.algoliaSearchApiKey,
                    currentUser?.geoLocation?.latitude.toString() ?? '',
                    currentUser?.geoLocation?.longitude.toString() ?? '',
                  ),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      if (Platform.isIOS) {
                        return Center(
                          child: CupertinoActivityIndicator(),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Error: ${snapshot.error}',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      );
                    } else {
                      AlgoliaQuerySnapshot algoliaQuerySnapshot = snapshot.data;

                      if (algoliaQuerySnapshot.empty) {
                        return Center(
                          child: Text(
                            'There is no items being bartered in your area.',
                          ),
                        );
                      } else {
                        return BarterItemFeed(
                          algoliaQuerySnapshot: algoliaQuerySnapshot,
                        );
                      }
                    }
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  ///Set Users address to current location.
  void setUsersLocation() {
    BlocBuilder<UserBloc, UserState>(
      builder: (userContext, userState) {
        UserModel currentUser = userState.userModel;
        if (currentUser.address == null || currentUser.address.isEmpty) {
          _locationBloc.add(LocationEvent.getInitialUserLocation());
        }

        BlocBuilder<LocationBloc, LocationState>(
          builder: (locationContext, locationState) {
            String address = '${locationState?.placeMark?.name ?? ''}, '
                '${locationState?.placeMark?.subLocality ?? ''}, '
                '${locationState?.placeMark?.locality ?? ''} ';

            currentUser.geoLocation = locationState.geoFirePoint.geoPoint;
            currentUser.address = address;
            currentUser.geoHash = locationState.geoFirePoint.hash;
            _userBloc.add(UserEvent.updateCurrentLoggedInUser(currentUser));

            return Container(); // don't need to build widget or return anything
          },
        );

        return Container(); // don't need to build widget or return anything
      },
    );
  }
}
