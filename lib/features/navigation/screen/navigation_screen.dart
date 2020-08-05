import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/home/screen/home_screen.dart';
import 'package:Toutly/features/inbox/screen/inbox_screen.dart';
import 'package:Toutly/features/likes/screen/likes_screen.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/features/navigation/widgets/custom_app_bar.dart';
import 'package:Toutly/features/navigation/widgets/navigation_bar.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/features/post/screen/post_screen.dart';
import 'package:Toutly/features/user_profile/screens/user_profile_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatelessWidget {
  final _postBloc = getIt<PostBloc>();
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) => state.map(
        homeScreen: (_) {
          return _buildNoAppBarSingleViewScreen(
            HomeScreen(),
            state.index,
          );
        },
        likesScreen: (_) {
          return _buildSingleViewScreen(
            null,
            LikesScreen(),
            state.index,
          );
        },
        postScreen: (_) {
          _postBloc.add(PostEvent.clearPhotoList());
          return _buildSingleViewScreen(
            CustomAppBar(
              appSizeConfig: appSizeConfig,
              title: 'Post Item',
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
            null,
            InboxScreen(),
            state.index,
          );
        },
      ),
    );
  }

  Widget _buildNoAppBarSingleViewScreen(Widget screen, int currentIndex) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: NavigationBar(
        currentIndex,
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
}
