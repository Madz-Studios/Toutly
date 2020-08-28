part of 'privacy_services_cubit.dart';

@freezed
abstract class PrivacyServicesState with _$PrivacyServicesState {
  const factory PrivacyServicesState({
    @required bool isLocationServiceEnabled,
  }) = _PrivacyServicesState;

  factory PrivacyServicesState.empty() => PrivacyServicesState(
        isLocationServiceEnabled: false,
      );
}
