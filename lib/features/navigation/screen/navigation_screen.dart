import 'package:Toutly/core/cubits/barter_messages/barter/barter_message_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/notification/notification_cubit.dart';
import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/home/screen/home_screen.dart';
import 'package:Toutly/features/messages/screen/messages_screen.dart';
import 'package:Toutly/features/post/screen/post_screen.dart';
import 'package:Toutly/features/saved/screen/saved_screen.dart';
import 'package:Toutly/features/signup/screen/modal_signup_screen.dart';
import 'package:Toutly/features/user_profile/screens/user_profile_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _postBarterCubit = getIt<PostBarterCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _searchConfigCubit = getIt<SearchConfigCubit>();

  final _notificationCubit = getIt<NotificationCubit>();

  final _barterMessages = getIt<BarterMessageCubit>();

  final _remoteConfigCubit = getIt<RemoteConfigCubit>();

  final _locationCubit = getIt<LocationCubit>();

  updateCurrentUserInitCall() {
    String subLocality = "${_locationCubit.state.placeMark.subLocality}";
    String locality = "${_locationCubit.state.placeMark.locality}";

    String address = '';
    if (subLocality.isNotEmpty) {
      address = address + subLocality + ", ";
    }
    if (locality.isNotEmpty) {
      address = address + locality;
    }

    _currentUserCubit.state.currentUserModel.address = address;

    _currentUserCubit.state.currentUserModel.geoLocation =
        _locationCubit.state.geoPoint;

    _currentUserCubit
        .updateCurrentLoggedInUser(_currentUserCubit.state.currentUserModel);

    ///update search config from the values of remote config and location
    _searchConfigCubit.setConfig(
      searchText: '',
      category: '',
      postedWithin: '',
      algoliaAppId: _remoteConfigCubit.state.algoliaAppId,
      algoliaSearchApiKey: _remoteConfigCubit.state.algoliaSearchApiKey,
      latitude: _locationCubit.state.geoPoint.latitude ??
          10.333333, //cebu city latitude
      longitude: _locationCubit.state.geoPoint.longitude ??
          123.933334, //cebu city longitude
      address: address,
      range: 50.0, //default
    );
  }

  @override
  void initState() {
    super.initState();

    updateCurrentUserInitCall();

    ///initial search
    SearchUtil().searchSubmit(
      searchText: '',
      category: '',
      postedWithin: '',
      algoliaSearchApiKey: _remoteConfigCubit.state.algoliaSearchApiKey,
      algoliaAppId: _remoteConfigCubit.state.algoliaAppId,
      latitude: _locationCubit.state.geoPoint.latitude,
      longitude: _locationCubit.state.geoPoint.longitude,
      range: 50.0, //default
    );

    _notificationCubit.initializeFirebaseMessaging(
      _currentUserCubit.state.currentUserModel,
    );

    _barterMessages.getBarterMessages(
      _currentUserCubit.state.currentUserModel.userId,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state.isHomeScreen) {
          return _buildNoAppBarSingleViewScreen(
            HomeScreen(),
            state.index,
          );
        } else if (state.isSavedScreen) {
          return _buildSingleViewScreen(
            _CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Saved',
            ),
            SavedScreen(),
            state.index,
          );
        } else if (state.isPostBarterScreen) {
          _postBarterCubit.reset();
          return _buildSingleViewScreen(
            _CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Add Item',
            ),
            PostScreen(),
            state.index,
          );
        } else if (state.isMessagesScreen) {
          return _buildSingleViewScreen(
            _CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Messages',
            ),
            MessagesScreen(),
            state.index,
          );
        } else {
          return _buildNoAppBarSingleViewScreen(
            UserProfileScreen(),
            state.index,
          );
        }
      },
    );
  }
}

Widget _buildNoAppBarSingleViewScreen(Widget screen, int currentIndex) {
  return Scaffold(
    body: screen,
    bottomNavigationBar: _NavigationBar(
      currentIndex,
    ),
  );
}

Widget _buildSingleViewScreen(Widget appBar, Widget screen, int currentIndex) {
  return Scaffold(
    appBar: appBar,
    body: screen,
    bottomNavigationBar: _NavigationBar(
      currentIndex,
    ),
  );
}

class _NavigationBar extends StatelessWidget {
  final _navigationCubit = getIt<NavigationCubit>();

  _NavigationBar(
    this.currentIndex, {
    Key key,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<NotificationCubit, NotificationState>(
      builder: (_, notificationState) {
        return BlocBuilder<CurrentUserCubit, CurrentUserState>(
          builder: (_, currentUserState) {
            final isAnonymous = currentUserState.isAnonymous;
            return BottomNavigationBar(
              selectedItemColor: kPrimaryColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (int index) {
                _onItemTapped(index, isAnonymous, context);
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  title: Text('Feed'),
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
                  title: Text('Saved'),
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
                  title: Text('Add Item'),
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
                  title: Text('Messages'),
                  icon: notificationState.hasUnreadMessage
                      ? SvgPicture.asset(
                          'assets/icons/chat.svg',
                          height: appSizeConfig.blockSizeVertical * 3,
                          color: kPrimaryColor,
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
                  title: Text('Profile'),
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
          },
        );
      },
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

void _showModalSignUpScreen(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
    ),
    builder: (BuildContext bc) {
      return ModalSignUpScreen();
    },
  );
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppSizeConfig appSizeConfig;
  final String title;
  _CustomAppBar({
    @required this.appSizeConfig,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      title: Text(
        title,
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        appSizeConfig.blockSizeVertical * 7.5,
      );
}
