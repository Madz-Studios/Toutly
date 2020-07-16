part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.initial() = UserEventInitial;
  const factory UserEvent.getCurrentLoggedInUser() =
      UserEventGetCurrentLoggedInUser;
}
