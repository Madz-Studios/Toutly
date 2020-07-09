part of 'remote_config_data_bloc.dart';

@freezed
abstract class RemoteConfigDataState with _$RemoteConfigDataState {
  const factory RemoteConfigDataState({
    @required String firebaseApiKey,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) = _RemoteConfigDataState;

  factory RemoteConfigDataState.init() => RemoteConfigDataState(
        firebaseApiKey: '',
        algoliaAppId: '',
        algoliaSearchApiKey: '',
      );

  factory RemoteConfigDataState.setConfigData({
    @required String firebaseApiKey,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) =>
      RemoteConfigDataState(
        firebaseApiKey: firebaseApiKey,
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
      );
}
