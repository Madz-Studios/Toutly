import 'package:Toutly/core/cubits/barter_messages/offer/offer_message_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/conversation/screen/conversation_offer_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OfferMessagesTab extends StatefulWidget {
  OfferMessagesTab(this.userId);

  final String userId;

  @override
  _OfferMessagesTabState createState() => _OfferMessagesTabState();
}

class _OfferMessagesTabState extends State<OfferMessagesTab> {
  final _offerMessagesCubit = getIt<OfferMessageCubit>();

  @override
  void initState() {
    super.initState();
    _offerMessagesCubit.getOfferMessages(
      widget.userId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfferMessageCubit, OfferMessageState>(
      builder: (_, offerMessageState) {
        return StreamBuilder<QuerySnapshot>(
          stream: offerMessageState.offerMessages,
          builder: (_, snapshot) {
            debugPrint("OfferMessagesTab Snapshot " + snapshot.toString());
            switch (snapshot.connectionState) {
              case ConnectionState.done:
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
      final messagesDocs = snapshot.data.docs;
      List<_MessageOfferItem> messageItems = [];
      for (final message in messagesDocs) {
        final barterMessageModel = BarterMessageModel.fromJson(message.data());
        messageItems.add(
          _MessageOfferItem(barterMessageModel),
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
}

class _MessageOfferItem extends StatelessWidget {
  final BarterMessageModel barterMessageModel;
  _MessageOfferItem(this.barterMessageModel);

  final _otherUserCubit = getIt<OtherUserCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return FutureBuilder(
      future: _otherUserCubit.getOtherUser(barterMessageModel.userBarter),
      builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
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
            UserModel otherUserModel = snapshot.data;
            return _buildOtherUserProfileMessage(
                context, appSizeConfig, otherUserModel);
        }
      },
    );
  }

  Widget _buildOtherUserProfileMessage(
      BuildContext context, AppSizeConfig appSizeConfig, UserModel barterUser) {
    return GestureDetector(
      onTap: () {
        _onTappedMessageItem(context, barterUser);
      },
      child: Column(
        children: [
          barterUser != null
              ? Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
                        vertical: appSizeConfig.blockSizeVertical * 2,
                      ),
                      child: CircleAvatar(
                        backgroundImage: barterUser.photoUrl != null
                            ? NetworkImage(barterUser.photoUrl ?? '')
                            : AssetImage(
                                'assets/images/profile_placeholder.png',
                              ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '${barterUser.name ?? ''}',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${barterMessageModel.lastMessageText ?? ''}',
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
                )
              : Container(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.blockSizeHorizontal * 5,
            ),
            child: Divider(),
          ),
        ],
      ),
    );
  }

  void _onTappedMessageItem(BuildContext context, UserModel barterUser) {
    debugPrint('Message item tapped');

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ConversationOfferScreen(barterMessageModel, barterUser);
      }),
    );
  }
}
