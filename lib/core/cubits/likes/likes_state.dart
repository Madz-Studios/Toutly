part of 'likes_cubit.dart';

@freezed
abstract class LikesState with _$LikesState {
  const factory LikesState({
    @required Future<List<BarterModel>> listings,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _BarterState;

  factory LikesState.empty() => LikesState(
        listings: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LikesState.loading() => LikesState(
        listings: Future.value([]),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LikesState.failure({@required String info}) => LikesState(
        listings: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory LikesState.success(
          {@required Future<List<BarterModel>> listings,
          @required String info}) =>
      LikesState(
        listings: listings,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
