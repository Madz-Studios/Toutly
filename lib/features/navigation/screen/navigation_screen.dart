import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/home/screen/home_screen.dart';
import 'package:Toutly/features/likes/screen/likes_screen.dart';
import 'package:Toutly/features/messages/screen/messages_screen.dart';
import 'package:Toutly/features/post/screen/post_screen.dart';
import 'package:Toutly/features/user_profile/screens/user_profile_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatelessWidget {
  final _postBarterCubit = getIt<PostBarterCubit>();
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) => state.map(
        homeScreen: (_) {
          return _buildNoAppBarSingleViewScreen(
            HomeScreen(),
            state.index,
          );
        },
        likesScreen: (_) {
          return _buildSingleViewScreen(
            _CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Likes',
            ),
            LikesScreen(),
            state.index,
          );
        },
        postBarterScreen: (_) {
          _postBarterCubit.reset();
          return _buildSingleViewScreen(
            _CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Barter',
            ),
            PostScreen(),
            state.index,
          );
        },
        userProfile: (_) {
          return _buildNoAppBarSingleViewScreen(
            UserProfileScreen(),
            state.index,
          );
        },
        inboxScreen: (_) {
          return _buildSingleViewScreen(
            _CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Messages',
            ),
            MessagesScreen(),
            state.index,
          );
        },
      ),
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
          title: Text('Likes'),
          icon: SvgPicture.asset(
            'assets/icons/unpressed-likes.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/unpressed-likes.svg',
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
    if (index == AppNavigationIndex.useProfileIndex) {
      _navigationCubit.goToUserProfileScreen();
    }
    if (index == AppNavigationIndex.inboxIndex) {
      _navigationCubit.goToInboxScreen();
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
