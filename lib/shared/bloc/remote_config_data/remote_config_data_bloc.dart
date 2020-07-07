import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remote_config_data_bloc.freezed.dart';
part 'remote_config_data_event.dart';
part 'remote_config_data_state.dart';

@lazySingleton
class RemoteConfigDataBloc
    extends Bloc<RemoteConfigDataEvent, RemoteConfigDataState> {
  final RemoteConfig remoteConfig;
  RemoteConfigDataBloc(
    this.remoteConfig,
  ) : super(RemoteConfigDataState.init());

  @override
  Stream<RemoteConfigDataState> mapEventToState(
      RemoteConfigDataEvent event) async* {
    yield* event.map(
      init: (_) async* {},
      loadConfigData: (e) async* {
        await remoteConfig.fetch();
        await remoteConfig.activateFetched();

        String apiKey;

        if (Platform.isIOS) {
          apiKey = remoteConfig.getString('ios_gcp_api_key');
        } else {
          apiKey = remoteConfig.getString('android_gcp_api_key');
        }

        yield RemoteConfigDataState.setConfigData(apiKey);
      },
    );
  }
}
