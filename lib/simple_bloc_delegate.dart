import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

/// A simple bloc delegate
class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    debugPrint(event.toString());
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stacktrace) {
    super.onError(cubit, error, stacktrace);
    debugPrint(error.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(transition.toString());
  }
}
