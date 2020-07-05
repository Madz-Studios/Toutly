part of 'remote_config_data_bloc.dart';

@freezed
abstract class RemoteConfigDataState with _$RemoteConfigDataState {
  const factory RemoteConfigDataState({
    @required String firebaseApiKey,
  }) = _RemoteConfigDataState;

  factory RemoteConfigDataState.init() => RemoteConfigDataState(
        firebaseApiKey: '',
      );

  factory RemoteConfigDataState.setConfigData(String firebaseApiKey) =>
      RemoteConfigDataState(
        firebaseApiKey: firebaseApiKey,
      );
}
