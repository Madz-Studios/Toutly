import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_bloc.freezed.dart';
part 'navigation_event.dart';
part 'navigation_state.dart';

@lazySingleton
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc()
      : super(NavigationState.homeScreen(AppNavigationIndex.homeIndex));

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    yield* event.map(
      goToHomeScreenEvent: (_) async* {
        yield NavigationState.homeScreen(AppNavigationIndex.homeIndex);
      },
      goToLikesScreenEvent: (_) async* {
        yield NavigationState.likesScreen(AppNavigationIndex.searchIndex);
      },
      goToPostScreenEvent: (_) async* {
        yield NavigationState.postScreen(AppNavigationIndex.postIndex);
      },
      goToUserProfileScreenEvent: (_) async* {
        yield NavigationState.userProfile(AppNavigationIndex.useProfileIndex);
      },
      goToInboxScreenEvent: (_) async* {
        yield NavigationState.inboxScreen(AppNavigationIndex.inboxIndex);
      },
    );
  }
}
