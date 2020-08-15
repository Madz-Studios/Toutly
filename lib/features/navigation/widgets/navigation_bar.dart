import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBar extends StatelessWidget {
  final _navigationCubit = getIt<NavigationCubit>();

  NavigationBar(
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
