import 'package:Toutly/features/favourites/screen/favourites_screen.dart';
import 'package:Toutly/features/home/screen/home_screen.dart';
import 'package:Toutly/features/inbox/screen/inbox_screen.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/features/navigation/widgets/custom_app_bar.dart';
import 'package:Toutly/features/navigation/widgets/item_tab_view.dart';
import 'package:Toutly/features/navigation/widgets/navigation_bar.dart';
import 'package:Toutly/features/post/screen/post_screen.dart';
import 'package:Toutly/features/search/screen/search_screen.dart';
import 'package:Toutly/features/user_barter_listing/screen/user_barter_listing_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) => state.map(
        homeScreen: (_) {
          return _buildSingleViewScreen(
            CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'TOUTLY',
            ),
            HomeScreen(),
            state.index,
          );
        },
        searchScreen: (_) {
          return _buildSingleViewScreen(
            null,
            SearchScreen(),
            state.index,
          );
        },
        postScreen: (_) {
          return _buildSingleViewScreen(
            CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Post Item',
            ),
            PostScreen(),
            state.index,
          );
        },
        userBarterListing: (_) {
          List<Widget> screens = [
            UserBarterListingScreen(),
            FavouritesScreen(),
          ];
          return ItemTabView(
            screens: screens,
            currentIndex: state.index,
          );
        },
        inboxScreen: (_) {
          return _buildSingleViewScreen(
            null,
            InboxScreen(),
            state.index,
          );
        },
      ),
    );
  }

  Widget _buildSingleViewScreen(
      Widget appBar, Widget screen, int currentIndex) {
    return Scaffold(
      appBar: appBar,
      body: screen,
      bottomNavigationBar: NavigationBar(
        currentIndex,
      ),
    );
  }

  Widget _buildSingleViewNoBottomNavBarScreen(Widget appBar, Widget screen) {
    return Scaffold(
      appBar: appBar,
      body: screen,
    );
  }
}
