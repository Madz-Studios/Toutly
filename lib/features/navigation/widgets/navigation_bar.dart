import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBar extends StatelessWidget {
  final _navigationBloc = getIt<NavigationBloc>();

  NavigationBar(
    this.currentIndex, {
    Key key,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text(''),
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
          title: Text(''),
          icon: SvgPicture.asset(
            'assets/icons/unpressed-search.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/unpressed-search.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: SvgPicture.asset(
            'assets/icons/toutly.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: Colors.black,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/toutly.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: SvgPicture.asset(
            'assets/icons/unpressed-favourites.svg',
            height: appSizeConfig.blockSizeVertical * 3,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/unpressed-favourites.svg',
            height: appSizeConfig.blockSizeVertical * 3,
            color: kPrimaryColor,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(''),
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
      ],
    );
  }

  void _onItemTapped(int index) {
    if (index == AppNavigationIndex.homeIndex) {
      _navigationBloc.add(NavigationEvent.goToHomeScreenEvent());
    }
    if (index == AppNavigationIndex.searchIndex) {
      _navigationBloc.add(NavigationEvent.goToSearchScreenEvent());
    }
    if (index == AppNavigationIndex.postIndex) {
      _navigationBloc.add(NavigationEvent.goToPostScreenEvent());
    }
    if (index == AppNavigationIndex.userBarterListingIndex) {
      _navigationBloc.add(NavigationEvent.goToUserBarterListingScreenEvent());
    }
    if (index == AppNavigationIndex.inboxIndex) {
      _navigationBloc.add(NavigationEvent.goToInboxScreenEvent());
    }
  }
}
