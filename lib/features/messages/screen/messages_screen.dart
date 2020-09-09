import 'package:Toutly/core/cubits/barter_messages/barter/barter_message_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/conversation/conversation_cubit.dart';
import 'package:Toutly/core/cubits/notification/notification_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/conversation/screen/conversation_barter_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BarterMessageCubit, BarterMessageState>(
      builder: (_, barterMessageState) {
        return StreamBuilder<QuerySnapshot>(
          stream: barterMessageState.barterMessages,
          builder: (_, snapshot) {
            debugPrint("BarterMessagesTab Snapshot " + snapshot.toString());
            switch (snapshot.connectionState) {
              case ConnectionState.active:
                if (snapshot.hasError) {
                  debugPrint('Error: ${snapshot.error}');
                  return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                } else {
                  return _buildMessages(snapshot);
                }
                break;
              default:
                if (snapshot.hasError) {
                  debugPrint('Error: ${snapshot.error}');
                  return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                } else {
                  return _buildMessages(snapshot);
                }
            }
          },
        );
      },
    );
  }

  Widget _buildMessages(AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.data != null && snapshot.data.docs.isNotEmpty) {
      ///merge two stream results

      List<_MessageBarterItem> messageItems = [];
      for (final message in snapshot.data.docs) {
        final barterMessageModel = BarterMessageModel.fromJson(message.data());
        if (barterMessageModel != null) {
          messageItems.add(
            _MessageBarterItem(barterMessageModel),
          );
        }
      }
      return SingleChildScrollView(
        child: Column(
          children: messageItems,
        ),
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have currently no messages',
            ),
          ],
        ),
      );
    }
  }
}

class _MessageBarterItem extends StatelessWidget {
  final BarterMessageModel barterMessageModel;
  _MessageBarterItem(this.barterMessageModel);

  final _otherUserCubit = getIt<OtherUserCubit>();

  final _notificationCubit = getIt<NotificationCubit>();
  final _conversationCubit = getIt<ConversationCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, state) {
        final currentUser = state.currentUserModel;
        return FutureBuilder(
          future: currentUser.userId != barterMessageModel.userOffer
              ? _otherUserCubit.getOtherUser(barterMessageModel.userOffer)
              : _otherUserCubit.getOtherUser(barterMessageModel.userBarter),
          builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
            debugPrint("_MessageSnapshot " + snapshot.toString());
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                if (snapshot.hasError)
                  return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                else {
                  UserModel otherUserModel = snapshot.data;
                  return _buildOtherUserProfileMessage(
                      context, appSizeConfig, otherUserModel);
                }
                break;
              default:
                debugPrint("Snapshot " + snapshot.toString());
                return Container();
            }
          },
        );
      },
    );
  }

  Widget _buildOtherUserProfileMessage(BuildContext context,
      AppSizeConfig appSizeConfig, UserModel otherUserModel) {
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, state) {
        final UserModel currentUser = state.currentUserModel;
        return InkWell(
          onTap: () {
            _onTappedMessageItem(context, otherUserModel, currentUser);
          },
          child: Container(
            child: Column(
              children: [
                if (otherUserModel != null)
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: appSizeConfig.blockSizeHorizontal * 2,
                          vertical: appSizeConfig.blockSizeVertical * 2,
                        ),
                        child: CircleAvatar(
                          backgroundImage: otherUserModel.photoUrl == null ||
                                  otherUserModel.photoUrl.isEmpty
                              ? AssetImage(
                                  'assets/images/profile_placeholder.png',
                                )
                              : NetworkImage(otherUserModel.photoUrl),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '${otherUserModel.name}',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${barterMessageModel.lastMessageText ?? ''}',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: currentUser.userId !=
                                                  barterMessageModel
                                                      .userLastMessageSender &&
                                              !barterMessageModel
                                                  .isReadLastMessage
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (currentUser.userId !=
                                        barterMessageModel
                                            .userLastMessageSender &&
                                    !barterMessageModel.isReadLastMessage)
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          appSizeConfig.blockSizeHorizontal *
                                              2.0,
                                    ),
                                    child: Icon(
                                      Icons.fiber_manual_record,
                                      color: kPrimaryColor,
                                    ),
                                  )
                                else
                                  Container(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                else
                  Container(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.blockSizeHorizontal * 5,
                  ),
                  child: Divider(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onTappedMessageItem(
      BuildContext context, UserModel otherUserModel, UserModel currentUser) {
    debugPrint('_onTappedMessageItem');

    _notificationCubit.hasUnreadBarterMessage(false);

    barterMessageModel.isReadLastMessage = true;

    _conversationCubit.messageUserBarterReadUpdate(
      barterMessageModel: barterMessageModel,
    );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ConversationBarterScreen(barterMessageModel, otherUserModel);
      }),
    );
  }
}
