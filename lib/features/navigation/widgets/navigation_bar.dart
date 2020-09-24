part of '../screen/navigation_screen.dart';

class _NavigationBar extends StatelessWidget {
  _NavigationBar(
    this.currentIndex, {
    Key key,
  }) : super(key: key);

  final int currentIndex;
  final _navigationCubit = getIt<NavigationCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _notificationCubit = getIt<NotificationCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        final isAnonymous = currentUserState.isAnonymous;
        return StreamBuilder<QuerySnapshot>(
          stream: _notificationCubit.state.barterMessages,
          builder: (_, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
                if (snapshot.hasError) {
                  debugPrint('Error: ${snapshot.error}');
                  return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                } else {
                  return _buildBottomNavigationBar(
                      isAnonymous, context, appSizeConfig, snapshot);
                }
                break;
              default:
                if (snapshot.hasError) {
                  debugPrint('Error: ${snapshot.error}');
                  return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                } else {
                  return _buildBottomNavigationBar(
                    isAnonymous,
                    context,
                    appSizeConfig,
                    snapshot,
                  );
                  ;
                }
            }
          },
        );
      },
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(
    bool isAnonymous,
    BuildContext context,
    AppSizeConfig appSizeConfig,
    AsyncSnapshot<QuerySnapshot> snapshot,
  ) {
    int unreadMessageCount = 0;
    if (snapshot.data != null && snapshot.data.docs.isNotEmpty) {
      for (final message in snapshot.data.docs) {
        final BarterMessageModel barterMessageModel =
            BarterMessageModel.fromJson(message.data());
        if (barterMessageModel != null) {
          if (_currentUserCubit.state.currentUserModel.userId !=
                  barterMessageModel.userLastMessageSender &&
              !barterMessageModel.isReadLastMessage) {
            unreadMessageCount++;
          }
        }
      }
    }

    if (unreadMessageCount > 0) {
      _notificationCubit.setAppIconBadge(true, unreadMessageCount);
    } else {
      _notificationCubit.setAppIconBadge(false, unreadMessageCount);
    }

    return BottomNavigationBar(
      selectedItemColor: kPrimaryColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (int index) {
        _onItemTapped(index, isAnonymous, context);
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'Home',
          icon: SvgPicture.asset(
            'assets/icons/unpressed-home.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/unpressed-home.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Saved',
          icon: SvgPicture.asset(
            'assets/icons/unpressed-saved.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/unpressed-saved.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Add Item',
          icon: SvgPicture.asset(
            'assets/icons/add.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/add.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Messages',
          icon: unreadMessageCount > 0
              ? Badge(
                  badgeContent: Text('$unreadMessageCount'),
                  child: SvgPicture.asset(
                    'assets/icons/chat.svg',
                    height: appSizeConfig.blockSizeVertical * 3,
                    color: kPrimaryColor,
                  ),
                )
              : SvgPicture.asset(
                  'assets/icons/unpressed-chat.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                ),
          activeIcon: SvgPicture.asset(
            'assets/icons/unpressed-chat.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/profile.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }

  void _onItemTapped(int index, bool isAnonymous, BuildContext context) {
    if (index == AppNavigationIndex.homeIndex) {
      _navigationCubit.goToHomeScreen();
    }
    if (index == AppNavigationIndex.searchIndex) {
      if (isAnonymous) {
        _showModalSignUpScreen(context);
      } else {
        _navigationCubit.goToLikesScreen();
      }
    }
    if (index == AppNavigationIndex.postIndex) {
      if (isAnonymous) {
        _showModalSignUpScreen(context);
      } else {
        _navigationCubit.goToPostScreen();
      }
    }
    if (index == AppNavigationIndex.messagesIndex) {
      if (isAnonymous) {
        _showModalSignUpScreen(context);
      } else {
        _navigationCubit.goToInboxScreen();
      }
    }
    if (index == AppNavigationIndex.useProfileIndex) {
      if (isAnonymous) {
        _showModalSignUpScreen(context);
      } else {
        _navigationCubit.goToUserProfileScreen();
      }
    }
  }
}
