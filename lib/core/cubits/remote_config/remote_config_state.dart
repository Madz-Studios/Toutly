part of 'remote_config_cubit.dart';

@freezed
abstract class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({
    @required String firebaseApiKey,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String info,
  }) = _RemoteConfigState;

  factory RemoteConfigState.empty() => RemoteConfigState(
        firebaseApiKey: '',
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory RemoteConfigState.loading() => RemoteConfigState(
        firebaseApiKey: '',
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory RemoteConfigState.failure(String info) => RemoteConfigState(
        firebaseApiKey: '',
        algoliaAppId: '',
        algoliaSearchApiKey: '',
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory RemoteConfigState.success({
    @required String firebaseApiKey,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required String info,
  }) =>
      RemoteConfigState(
        firebaseApiKey: firebaseApiKey,
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
