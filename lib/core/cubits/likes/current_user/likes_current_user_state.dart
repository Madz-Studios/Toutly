part of 'likes_current_user_cubit.dart';

@freezed
abstract class LikesCurrentUserState with _$LikesCurrentUserState {
  const factory LikesCurrentUserState({
    @required Future<List<BarterModel>> listings,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _LikesState;

  factory LikesCurrentUserState.empty() => LikesCurrentUserState(
        listings: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LikesCurrentUserState.loading() => LikesCurrentUserState(
        listings: Future.value([]),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LikesCurrentUserState.failure({@required String info}) =>
      LikesCurrentUserState(
        listings: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory LikesCurrentUserState.success(
          {@required Future<List<BarterModel>> listings,
          @required String info}) =>
      LikesCurrentUserState(
        listings: listings,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
