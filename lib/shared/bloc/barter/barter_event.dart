part of 'barter_bloc.dart';

@freezed
abstract class BarterEvent with _$BarterEvent {
  const factory BarterEvent.initial() = BarterEventInitial;
}
