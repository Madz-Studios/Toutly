part of 'barter_message_cubit.dart';

@freezed
abstract class BarterMessageState with _$BarterMessageState {
  const factory BarterMessageState({
    @required Stream<QuerySnapshot> barterMessages,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _BarterMessageState;

  factory BarterMessageState.empty() => BarterMessageState(
        barterMessages: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterMessageState.loading() => BarterMessageState(
        barterMessages: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory BarterMessageState.failure({String info}) => BarterMessageState(
        barterMessages: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory BarterMessageState.success(
          {Stream<QuerySnapshot> barterMessages,
          Stream<QuerySnapshot> offerMessages,
          String info}) =>
      BarterMessageState(
        barterMessages: barterMessages,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
