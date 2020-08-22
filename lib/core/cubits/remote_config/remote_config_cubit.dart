import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remote_config_cubit.freezed.dart';
part 'remote_config_state.dart';

@lazySingleton
class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  final RemoteConfig remoteConfig;

  RemoteConfigCubit(
    this.remoteConfig,
  ) : super(RemoteConfigState.empty());

  getConfigData() async {
    emit(RemoteConfigState.loading());
    try {
      await remoteConfig.fetch();
      await remoteConfig.activateFetched();

      String algoliaAppId = remoteConfig.getString('algolia_app_id');
      String algoliaSearchApiKey =
          remoteConfig.getString('algolia_search_api_key');

      String firebaseApiKey;
      if (Platform.isIOS) {
        firebaseApiKey = remoteConfig.getString('ios_gcp_api_key');
      } else {
        firebaseApiKey = remoteConfig.getString('android_gcp_api_key');
      }

      debugPrint('algoliaAppId = $algoliaAppId');
      debugPrint('algoliaSearchApiKey = $algoliaSearchApiKey');
      debugPrint('firebaseApiKey = $firebaseApiKey');
      emit(RemoteConfigState.success(
        firebaseApiKey: firebaseApiKey,
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
        info: 'Remote Config Success',
      ));
    } on PlatformException catch (platFormException) {
      emit(RemoteConfigState.failure(info: platFormException.message));
    } on Exception catch (e) {
      emit(RemoteConfigState.failure(info: e.toString()));
    }
  }
}
