part of 'barter_bloc.dart';

@freezed
abstract class BarterState with _$BarterState {
  const factory BarterState({
    @required Future<List<BarterModel>> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _BarterState;

  factory BarterState.empty() => BarterState(
        userBarterItems: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterState.loading() => BarterState(
        userBarterItems: Future.value([]),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterState.failure({@required String info}) => BarterState(
        userBarterItems: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory BarterState.success(
          {@required Future<List<BarterModel>> userBarterItems,
          @required String info}) =>
      BarterState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
