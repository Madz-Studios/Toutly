part of 'notification_cubit.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @required bool hasUnreadMessage,
    @required bool hasOfferMessageUnread,
    @required bool hasBarterMessageUnread,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _NotificationState;

  factory NotificationState.empty() => NotificationState(
        hasUnreadMessage: false,
        hasOfferMessageUnread: false,
        hasBarterMessageUnread: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory NotificationState.loading() => NotificationState(
        hasUnreadMessage: false,
        hasOfferMessageUnread: false,
        hasBarterMessageUnread: false,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory NotificationState.failure({String info}) => NotificationState(
        hasUnreadMessage: false,
        hasOfferMessageUnread: false,
        hasBarterMessageUnread: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory NotificationState.success(
          {bool hasOfferMessageUnread,
          bool hasBarterMessageUnread,
          String info}) =>
      NotificationState(
        hasUnreadMessage: hasOfferMessageUnread || hasBarterMessageUnread,
        hasOfferMessageUnread: hasOfferMessageUnread,
        hasBarterMessageUnread: hasBarterMessageUnread,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
