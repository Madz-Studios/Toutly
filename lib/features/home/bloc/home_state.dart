part of 'home_bloc.dart';

@freezed
abstract class HomeState implements _$HomeState {
  const factory HomeState.initial() = HomeStateInitial;
}
