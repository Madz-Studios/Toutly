import 'dart:io';

import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_cubit.freezed.dart';
part 'notification_state.dart';

@lazySingleton
class NotificationCubit extends Cubit<NotificationState> {
  final FirebaseMessaging _firebaseMessaging;
  final CurrentUserCubit _currentUserCubit;

  NotificationCubit(
    this._currentUserCubit,
    this._firebaseMessaging,
  ) : super(NotificationState.empty());

  initializeFirebaseMessaging(UserModel userModel) async {
    try {
      //set fcm token
      String deviceToken = await _firebaseMessaging.getToken();

      bool isDeviceTokenExist = false;
      if (userModel.fcmToken != null && userModel.fcmToken.isNotEmpty) {
        for (String fcmToken in userModel.fcmToken) {
          if (deviceToken == fcmToken) {
            isDeviceTokenExist = true;
          }
        }
        if (!isDeviceTokenExist) {
          userModel.fcmToken.add(deviceToken);
        }
      } else {
        List<String> fcmTokenList = [];
        fcmTokenList.add(deviceToken);
        userModel.fcmToken = fcmTokenList;
      }
      await _currentUserCubit.updateCurrentLoggedInUser(userModel);

      _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print("onMessage: $message");
          this.setUnreadMessage(true);
        },
        onLaunch: (Map<String, dynamic> message) async {
          print("onLaunch: $message");
          this.setUnreadMessage(true);
        },
        onResume: (Map<String, dynamic> message) async {
          print("onResume: $message");
          this.setUnreadMessage(true);
        },
        onBackgroundMessage:
            Platform.isIOS ? null : _myBackgroundMessageHandler,
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
    } on PlatformException catch (platFormException) {
      emit(NotificationState.failure(info: platFormException.message));
      throw FlutterError(platFormException.message);
    } on Exception catch (e) {
      emit(NotificationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  setUnreadMessage(bool hasUnreadMessage) {
    emit(NotificationState.loading());

    emit(
      NotificationState.success(
          info: "Unread messages = $hasUnreadMessage",
          hasUnreadMessage: hasUnreadMessage),
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
