import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/home/bloc/home_bloc.dart';
import 'package:Toutly/features/home/widgets/barter_item_feed.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
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

  @override
  void initState() {
    super.initState();

    _remoteConfigBloc.add(RemoteConfigDataEvent.loadConfigData());
    _locationBloc.add(LocationEvent.getInitialUserLocation());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
      builder: (context, state) {
        return BlocBuilder<LocationBloc, LocationState>(
          builder: (locationContext, locationState) {
            return FutureBuilder(
              future: _homeBloc.getBarterFeeds(
                state.algoliaAppId,
                state.algoliaSearchApiKey,
                locationState?.geoFirePoint?.latitude.toString() ?? '',
                locationState?.geoFirePoint?.longitude.toString() ?? '',
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
                  return BarterItemFeed(
                      algoliaQuerySnapshot: algoliaQuerySnapshot);
                }
              },
            );
          },
        );
      },
    );
  }
}
