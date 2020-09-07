import 'package:Toutly/core/cubits/barter_messages/barter/barter_message_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/offer/offer_message_cubit.dart';
import 'package:Toutly/core/cubits/notification/notification_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/messages/tabs/barter_messages_tab.dart';
import 'package:Toutly/features/messages/tabs/offer_messages_tab.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagesScreen extends StatelessWidget {
  final _offerMessagesCubit = getIt<OfferMessageCubit>();

  final _barterMessagesCubit = getIt<BarterMessageCubit>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0XFFDDDDDD),
                ),
                bottom: BorderSide(
                  color: Color(0XFFDDDDDD),
                ),
              ),
            ),
            child: BlocBuilder<NotificationCubit, NotificationState>(
              builder: (_, notificationState) {
                return TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Color(0XFF666666),
                  indicatorColor: kPrimaryColor,
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tab(
                          text: 'Offers',
                        ),
                        if (notificationState.hasOfferMessageUnread)
                          Icon(
                            Icons.markunread,
                            color: kSecondaryColor,
                          )
                        else
                          SizedBox.shrink(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tab(
                          text: 'Barters',
                        ),
                        if (notificationState.hasBarterMessageUnread)
                          Icon(
                            Icons.markunread,
                            color: kSecondaryColor,
                          )
                        else
                          SizedBox.shrink(),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
              builder: (_, currentUserState) {
                final currentUser = currentUserState.currentUserModel;
                _offerMessagesCubit.getOfferMessages(
                  currentUserState.currentUserModel.userId,
                );

                _barterMessagesCubit.getBarterMessages(
                  currentUserState.currentUserModel.userId,
                );
                return TabBarView(
                  children: <Widget>[
                    OfferMessagesTab(currentUser.userId),
                    BarterMessagesTab(currentUser.userId),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
