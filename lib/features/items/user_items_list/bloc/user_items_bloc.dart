import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_items_bloc.freezed.dart';
part 'user_items_event.dart';
part 'user_items_state.dart';

@lazySingleton
class UserItemsBloc extends Bloc<UserItemsEvent, UserItemsState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  UserItemsBloc({
    this.firebaseGetUserUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
  });

  @override
  UserItemsState get initialState => UserItemsState.empty();

  @override
  Stream<UserItemsState> mapEventToState(UserItemsEvent event) async* {
    yield* event.map(
      init: (e) async* {},
      loadUserBarterItems: (e) async* {
        yield UserItemsState.loading();

        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        final userBarterItems =
            await firestoreGetAllBarterItemsUsingUserIdUseCase.call(
          UseCaseUserIdParam.init(
            userId: firebaseUser.uid,
          ),
        );

        yield UserItemsState.success(userBarterItems);
      },
    );
  }
}
