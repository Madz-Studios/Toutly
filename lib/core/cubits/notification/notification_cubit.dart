import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_cubit.freezed.dart';
part 'notification_state.dart';

@lazySingleton
class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationState.empty());

  hasUnreadOfferMessage(bool hasUnreadMessage) {
    emit(
      state.copyWith(
        hasUnreadMessage: hasUnreadMessage,
        hasOfferMessageUnread: hasUnreadMessage,
      ),
    );
  }

  hasUnreadBarterMessage(bool hasUnreadMessage) {
    emit(
      state.copyWith(
        hasUnreadMessage: hasUnreadMessage,
        hasBarterMessageUnread: hasUnreadMessage,
      ),
    );
  }
}
