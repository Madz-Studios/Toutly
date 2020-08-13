import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/conversation/screen/conversation_screen.dart';
import 'package:Toutly/shared/bloc/messages/messages_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BartersTab extends StatelessWidget {
  final _messagesBloc = getIt<MessagesBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (_, userState) {
        final currentUser = userState.userModel;
        return StreamBuilder<QuerySnapshot>(
          stream: _messagesBloc.getAllUserBarterMessages(
            currentUser.userId,
          ),
          builder: (_, snapshot) {
            if (!snapshot.hasData) {
              if (Platform.isIOS) {
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              );
            } else {
              final messagesDocs = snapshot.data.documents;

              if (messagesDocs.isNotEmpty) {
                List<_MessageBarterItem> messageItems = [];
                for (final message in messagesDocs) {
                  final barterMessageModel =
                      BarterMessageModel.fromJson(message.data);
                  messageItems.add(
                    _MessageBarterItem(barterMessageModel),
                  );
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
          },
        );
      },
    );
  }
}

class _MessageBarterItem extends StatelessWidget {
  final BarterMessageModel barterMessageModel;
  _MessageBarterItem(this.barterMessageModel);
  final _userBloc = getIt<UserBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return GestureDetector(
      onTap: () {
        _onTappedMessageItem(context);
      },
      child: FutureBuilder(
        future: _userBloc.getUser(barterMessageModel.userOffer),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center();
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            );
          } else {
            UserModel barterUser = snapshot.data;
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: appSizeConfig.blockSizeHorizontal * 2,
                        vertical: appSizeConfig.blockSizeVertical * 2,
                      ),
                      child: CircleAvatar(
                        backgroundImage: barterUser.photoUrl == null ||
                                barterUser.photoUrl.isEmpty
                            ? AssetImage(
                                'assets/images/profile_placeholder.png',
                              )
                            : NetworkImage(barterUser.photoUrl),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '${barterUser.name}',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${barterMessageModel.lastMessageText}',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.blockSizeHorizontal * 5,
                  ),
                  child: Divider(),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  void _onTappedMessageItem(BuildContext context) {
    debugPrint('Message item tapped');

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ConversationScreen();
      }),
    );
  }
}
