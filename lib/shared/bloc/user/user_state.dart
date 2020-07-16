part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    UserModel userModel,
  }) = _UserState;

  factory UserState.init() => UserState();

  factory UserState.setCurrentLoggedInUser(UserModel userModel) =>
      UserState(userModel: userModel);
}
