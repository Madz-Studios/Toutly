import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
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
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatefulWidget {
  final LocationState locationState;
  final RemoteConfigState remoteConfigState;
  final CurrentUserState currentUserState;

  NavigationScreen({
    @required this.currentUserState,
    @required this.locationState,
    @required this.remoteConfigState,
  });

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _searchConfigCubit = getIt<SearchConfigCubit>();

  final _postBarterCubit = getIt<PostBarterCubit>();

  @override
  void initState() {
    super.initState();

    final currentUser = widget.currentUserState.currentUserModel;

    ///update current user using the values of location
    currentUser.geoLocation = widget.locationState.geoPoint;
    currentUser.address = "${widget.locationState.placeMark.subLocality}, "
        "${widget.locationState.placeMark.locality}";

    _currentUserCubit.updateCurrentLoggedInUser(currentUser);

    ///update search config from the values of remote config and location
    _searchConfigCubit.setConfig(
      searchText: '',
      category: '',
      postedWithin: '',
      algoliaAppId: widget.remoteConfigState.algoliaAppId,
      algoliaSearchApiKey: widget.remoteConfigState.algoliaSearchApiKey,
      latitude: widget.locationState.geoPoint.latitude,
      longitude: widget.locationState.geoPoint.longitude,
    );

    ///initial search
    SearchUtil().searchSubmit(
      searchText: '',
      category: '',
      postedWithin: '',
      algoliaSearchApiKey: widget.remoteConfigState.algoliaSearchApiKey,
      algoliaAppId: widget.remoteConfigState.algoliaAppId,
      latitude: widget.locationState.geoPoint.latitude,
      longitude: widget.locationState.geoPoint.longitude,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return buildNavigationBuilder(appSizeConfig);
  }

  Widget buildNavigationBuilder(AppSizeConfig appSizeConfig) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (_, locationState) {
        if (locationState.isSuccess) {
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
        }
        return ScaffoldLoadingOrErrorWidgetUtil(locationState.info);
      },
    );
  }

  Widget _buildNoAppBarSingleViewScreen(Widget screen, int currentIndex) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: _NavigationBar(
        currentIndex,
      ),
    );
  }

  Widget _buildSingleViewScreen(
      Widget appBar, Widget screen, int currentIndex) {
    return Scaffold(
      appBar: appBar,
      body: screen,
      bottomNavigationBar: _NavigationBar(
        currentIndex,
      ),
    );
  }
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
          icon: SvgPicture.asset(
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
  Size get preferredSize =>
      Size.fromHeight(appSizeConfig.blockSizeVertical * 5.5);
}
