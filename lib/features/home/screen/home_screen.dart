import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/features/home/bloc/home_bloc.dart';
import 'package:Toutly/features/home/widgets/feed_item.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final algoliaSearchApiKey =
      getIt<RemoteConfigDataBloc>().state.algoliaSearchApiKey;
  final algoliaAppId = getIt<RemoteConfigDataBloc>().state.algoliaAppId;
  final _homeBloc = getIt<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _homeBloc.getBarterFeeds(algoliaAppId, algoliaSearchApiKey),
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
          return UserFeed(algoliaQuerySnapshot: algoliaQuerySnapshot);
        }
      },
    );
  }
}

class UserFeed extends StatelessWidget {
  final _homeBloc = getIt<HomeBloc>();
  final AlgoliaQuerySnapshot algoliaQuerySnapshot;
  UserFeed({
    this.algoliaQuerySnapshot,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: algoliaQuerySnapshot.hits.length,
      itemBuilder: (context, index) {
        final algoliaBarterModel =
            AlgoliaBarterModel.fromJson(algoliaQuerySnapshot.hits[index].data);
        return FutureBuilder(
          future: _homeBloc.getUser(algoliaBarterModel.userId),
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
              final user = snapshot.data;
              return FeedItem(
                algoliaBarter: algoliaBarterModel,
                user: user,
              );
            }
          },
        );
      },
    );
  }
}
