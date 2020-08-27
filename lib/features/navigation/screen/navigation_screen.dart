import 'package:Toutly/core/cubits/barter_messages/barter/barter_message_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/offer/offer_message_cubit.dart';
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
import 'package:Toutly/features/user_profile/screens/user_profile_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatefulWidget {
  final RemoteConfigState remoteConfigState;
  final CurrentUserState currentUserState;
  final LocationState locationState;
  NavigationScreen(
    this.remoteConfigState,
    this.currentUserState,
    this.locationState,
  );

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _postBarterCubit = getIt<PostBarterCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _searchConfigCubit = getIt<SearchConfigCubit>();

  final _offerMessagesCubit = getIt<OfferMessageCubit>();

  final _barterMessagesCubit = getIt<BarterMessageCubit>();

  @override
  void initState() {
    super.initState();

    _offerMessagesCubit.getOfferMessages(
      widget.currentUserState.currentUserModel.userId,
    );

    _barterMessagesCubit.getBarterMessages(
      widget.currentUserState.currentUserModel.userId,
    );

    _updateUserConfig(
      widget.locationState,
      widget.remoteConfigState,
      widget.currentUserState,
    );
  }

  void _updateUserConfig(
    LocationState locationState,
    RemoteConfigState remoteConfigState,
    CurrentUserState currentUserState,
  ) {
    final currentUser = currentUserState.currentUserModel;

    if (currentUser != null &&
        locationState.geoPoint != null &&
        locationState.placeMark != null) {
      ///update current user using the values of location

      String subLocality = "${locationState.placeMark.subLocality}";
      String locality = "${locationState.placeMark.locality}";
      String address = "";
      if (subLocality.isNotEmpty) {
        address = address + subLocality + ", ";
      }
      if (locality.isNotEmpty) {
        address = address + locality;
      }

      currentUser.address = address;

      currentUser.geoLocation = locationState.geoPoint;

      _currentUserCubit.updateCurrentLoggedInUser(currentUser);
    }

    ///update search config from the values of remote config and location
    _searchConfigCubit.setConfig(
      searchText: '',
      category: '',
      postedWithin: '',
      algoliaAppId: remoteConfigState.algoliaAppId,
      algoliaSearchApiKey: remoteConfigState.algoliaSearchApiKey,
      latitude:
          locationState.geoPoint.latitude ?? 10.333333, //cebu city latitude
      longitude:
          locationState.geoPoint.longitude ?? 123.933334, //cebu city longitude
    );

    ///initial search
    SearchUtil().searchSubmit(
      searchText: '',
      category: '',
      postedWithin: '',
      algoliaSearchApiKey: remoteConfigState.algoliaSearchApiKey,
      algoliaAppId: remoteConfigState.algoliaAppId,
      latitude: locationState.geoPoint.latitude,
      longitude: locationState.geoPoint.longitude,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (_, locationState) {
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
                  title: 'Barter',
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
      },
    );
  }

  void _showMaterialDialog(BuildContext mainContext) {
    showDialog(
      barrierDismissible: false,
      context: mainContext,
      builder: (BuildContext subContext) {
        return AlertDialog(
          title: Text(
            "Location permission is denied. Please grant Toutly access to your location.",
          ),
          actions: [
            FlatButton(
              child: Text(
                "Yes",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              onPressed: () {
                AppSettings.openLocationSettings();
              },
            ),
            FlatButton(
              child: Text(
                "Restart",
                style: TextStyle(
                  color: kSecondaryRedAccentColor,
                ),
              ),
              onPressed: () {
//                Navigator.pop(subContext);
//                SystemNavigator.pop();
                SystemChannels.platform
                    .invokeMethod<void>('SystemNavigator.pop');
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog(BuildContext mainContext) {
    showDialog(
      barrierDismissible: true,
      context: mainContext,
      builder: (BuildContext subContext) {
        return CupertinoAlertDialog(
          title: Text(
            "Location permission is denied. Please grant Toutly access to your location then restart the app.",
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              textStyle: TextStyle(
                color: kPrimaryColor,
              ),
              child: Text("Open Location Settings"),
              onPressed: () {
                AppSettings.openLocationSettings();
              },
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text(
                "Restart",
                style: TextStyle(
                  color: kSecondaryRedAccentColor,
                ),
              ),
              onPressed: () async {
                SystemChannels.platform
                    .invokeMethod<void>('SystemNavigator.pop');
              },
            ),
          ],
        );
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
        return BottomNavigationBar(
          selectedItemColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: _onItemTapped,
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
              title: Text('Barter'),
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
                      color: kSecondaryRedAccentColor,
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
  }

  void _onItemTapped(int index) {
    if (index == AppNavigationIndex.homeIndex) {
      _navigationCubit.goToHomeScreen();
    }
    if (index == AppNavigationIndex.searchIndex) {
      _navigationCubit.goToLikesScreen();
    }
    if (index == AppNavigationIndex.postIndex) {
      _navigationCubit.goToPostScreen();
    }
    if (index == AppNavigationIndex.messagesIndex) {
      _navigationCubit.goToInboxScreen();
    }
    if (index == AppNavigationIndex.useProfileIndex) {
      _navigationCubit.goToUserProfileScreen();
    }
  }
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
