import 'dart:io';

import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/repositories/barter_message/firestore_barter_message_repository.dart';
import 'package:Toutly/shared/util/connection_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_cubit.freezed.dart';
part 'notification_state.dart';

@lazySingleton
class NotificationCubit extends Cubit<NotificationState> {
  final FirebaseMessaging _firebaseMessaging;
  final CurrentUserCubit _currentUserCubit;

  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final FirestoreBarterMessageRepository _firestoreBarterMessagesRepository;

  NotificationCubit(
    this._firebaseAuthUserRepository,
    this._currentUserCubit,
    this._firebaseMessaging,
    this._firestoreBarterMessagesRepository,
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
        },
        onLaunch: (Map<String, dynamic> message) async {
          print("onLaunch: $message");
        },
        onResume: (Map<String, dynamic> message) async {
          print("onResume: $message");
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

  ///this call will get all the messages to check if there is unread messages
  getCurrentUnreadBarterMessages() async {
    try {
      emit(NotificationState.loading());
      bool isConnected = await isConnectedToInternet();
      if (isConnected) {
        final User firebaseUser = _firebaseAuthUserRepository.getUser();
        final Stream<QuerySnapshot> barterMessages =
            _firestoreBarterMessagesRepository
                .getStreamAllBarterMessagesUsingUserId(firebaseUser.uid);
        emit(
          NotificationState.success(
              barterMessages: barterMessages,
              // offerMessages: offerMessages,
              info: 'Success'),
        );
      } else {
        emit(NotificationState.failure(
            info: 'There was no connection. Please connect to the internet.'));
      }
    } on PlatformException catch (platformException) {
      emit(NotificationState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(NotificationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  setAppIconBadge(bool hasUnreadMessage, int count) async {
    ///app icon badge update

    bool isAppBadgeSupported = await FlutterAppBadger.isAppBadgeSupported();
    print('isAppBadgeSupported = $isAppBadgeSupported');
    if (isAppBadgeSupported) {
      if (hasUnreadMessage) {
        FlutterAppBadger.updateBadgeCount(count);
      } else {
        FlutterAppBadger.removeBadge();
      }
    }
  }
}

Future<dynamic> _myBackgroundMessageHandler(
    Map<String, dynamic> message) async {
  print("myBackgroundMessageHandler: $message");
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];

    print('_myBackgroundMessageHandler data = $data');
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];

    print('_myBackgroundMessageHandler notification = $notification');
  }

  // Or do other work.
}
