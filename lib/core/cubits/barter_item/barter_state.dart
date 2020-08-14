part of 'barter_cubit.dart';

@freezed
abstract class BarterState with _$BarterState {
  const factory BarterState({
    @required Stream<QuerySnapshot> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _BarterState;

  factory BarterState.empty() => BarterState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterState.loading() => BarterState(
        userBarterItems: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterState.failure({@required String info}) => BarterState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory BarterState.success(
          {@required Stream<QuerySnapshot> userBarterItems,
          @required String info}) =>
      BarterState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
