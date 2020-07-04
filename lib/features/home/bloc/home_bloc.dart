import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FirestoreGetUserUseCase firestoreGetUserUseCase;
  final FirestoreUpdateUserUseCase firestoreUpdateUserUseCase;

  HomeBloc({
    this.firestoreGetUserUseCase,
    this.firestoreUpdateUserUseCase,
  });

  @override
  HomeState get initialState => HomeState.initial();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      checkUserLocation: (e) async* {
        /// TODO: Need to get the current user's location in the DB or set it to the current location.
      },
      loadBarterFeeds: (e) async* {},
    );
  }
}
