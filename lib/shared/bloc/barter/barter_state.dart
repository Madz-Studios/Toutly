part of 'barter_bloc.dart';

@freezed
abstract class BarterState with _$BarterState {
  const factory BarterState.initial() = BarterStateInitial;
}
