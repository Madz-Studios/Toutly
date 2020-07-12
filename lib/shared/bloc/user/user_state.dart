part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    FirebaseUser currentFirebaseUser,
  }) = _UserState;

  factory UserState.init() => UserState();

  factory UserState.setCurrentFirebaseUSer(FirebaseUser currentFirebaseUser) =>
      UserState(currentFirebaseUser: currentFirebaseUser);
}
