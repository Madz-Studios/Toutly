import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_bloc.freezed.dart';
part 'navigation_event.dart';
part 'navigation_state.dart';

@lazySingleton
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  @override
  NavigationState get initialState => NavigationState.homeScreen(0);

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    yield* event.map(
      goToHomeScreenEvent: (_) async* {
        yield NavigationState.homeScreen(0);
      },
      goToSearchScreenEvent: (_) async* {
        yield NavigationState.searchScreen(1);
      },
      goToPostScreenEvent: (_) async* {
        yield NavigationState.postScreen(2);
      },
      goToFavouritesScreenEvent: (_) async* {
        yield NavigationState.favouriteScreen(3);
      },
      goToInboxScreenEvent: (_) async* {
        yield NavigationState.inboxScreen(4);
      },
    );
  }
}
