import 'dart:io';

import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_cubit.freezed.dart';
part 'notification_state.dart';

@lazySingleton
class NotificationCubit extends Cubit<NotificationState> {
  final FirebaseMessaging _firebaseMessaging;
  final FirestoreUpdateUserUseCase _firestoreUpdateUserUseCase;

  NotificationCubit(
    this._firestoreUpdateUserUseCase,
    this._firebaseMessaging,
  ) : super(NotificationState.empty());

  initializeFirebaseMessaging(UserModel userModel) async {
    //set fcm token
    String deviceToken = await _firebaseMessaging.getToken();

    bool isDeviceTokenExist = false;
    if (userModel.fcmToken != null && userModel.fcmToken.isNotEmpty) {
      for (String fcmToken in userModel.fcmToken) {
        if (deviceToken == fcmToken) {
          isDeviceTokenExist = true;
        }
      }
    } else {
      List<String> fcmTokenList = [];
      fcmTokenList.add(deviceToken);
      userModel.fcmToken = fcmTokenList;
    }
    if (!isDeviceTokenExist) {
      userModel.fcmToken.add(deviceToken);
    }

    await _firestoreUpdateUserUseCase
        .call(UseCaseUserParamUserModel.init(userModel));

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        hasUnreadBarterMessage(true);
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        hasUnreadBarterMessage(true);
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        hasUnreadBarterMessage(true);
      },
      onBackgroundMessage: Platform.isIOS ? null : _myBackgroundMessageHandler,
    );

    if (Platform.isIOS) {
      _firebaseMessaging
          .requestNotificationPermissions(const IosNotificationSettings(
        sound: true,
        badge: true,
        alert: true,
      ));
      _firebaseMessaging.onIosSettingsRegistered
          .listen((IosNotificationSettings settings) {
        print("Settings registered: $settings");
      });
    }
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

Future<dynamic> _myBackgroundMessageHandler(
    Map<String, dynamic> message) async {
  print("myBackgroundMessageHandler: $message");
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
  }

  // Or do other work.
}
