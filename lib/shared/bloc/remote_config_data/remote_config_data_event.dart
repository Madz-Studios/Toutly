part of 'remote_config_data_bloc.dart';

@freezed
abstract class RemoteConfigDataEvent with _$RemoteConfigDataEvent {
  const factory RemoteConfigDataEvent.init() = RemoteConfigDataEventInit;
  const factory RemoteConfigDataEvent.loadConfigData() =
      RemoteConfigDataEventLoadConfigData;
}
