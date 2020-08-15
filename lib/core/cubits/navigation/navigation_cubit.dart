import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

@lazySingleton
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(NavigationState.homeScreen(AppNavigationIndex.homeIndex));

  goToHomeScreen() {
    emit(NavigationState.homeScreen(AppNavigationIndex.homeIndex));
  }

  goToLikesScreen() {
    emit(NavigationState.likesScreen(AppNavigationIndex.searchIndex));
  }

  goToPostScreen() {
    emit( NavigationState.postScreen(AppNavigationIndex.postIndex));
  }

  goToUserProfileScreen() {
    emit( NavigationState.userProfile(AppNavigationIndex.useProfileIndex));
  }

  goToInboxScreen() {
    emit( NavigationState.inboxScreen(AppNavigationIndex.inboxIndex));
  }
}
