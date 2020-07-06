import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_get_current_user_id_usecase.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_items_bloc.freezed.dart';
part 'user_items_event.dart';
part 'user_items_state.dart';

@lazySingleton
class UserItemsBloc extends Bloc<UserItemsEvent, UserItemsState> {
  final LocalSharedPrefGetCurrentUserIdUseCase
      localSharedPrefGetCurrentUserIdUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  UserItemsBloc({
    this.localSharedPrefGetCurrentUserIdUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
  }) : super(UserItemsState.initial());

  @override
  Stream<UserItemsState> mapEventToState(UserItemsEvent event) async* {
    yield* event.map(
      init: (e) async* {},
      loadUserBarterItems: (e) async* {
//        yield UserItemsState.inProgress();
//
//        final firebaseUser =
//            await firebaseGetUserUseCase.call(UseCaseNoParam.init());
//
//        final userBarterItems =
//            await firestoreGetAllBarterItemsUsingUserIdUseCase.call(
//          UseCaseUserIdWithListBarterParam.init(
//            userId: firebaseUser.uid,
//            length: e.length,
//          ),
//        );

//        yield UserItemsState.success(userBarterItems);
      },
    );
  }

  Query getAllQueryMessages(DocumentSnapshot lastDoc) {
    final userId =
        localSharedPrefGetCurrentUserIdUseCase.call(UseCaseNoParam.init());

    print('userId = $userId');
    return firestoreGetAllBarterItemsUsingUserIdUseCase.call(
      UseCaseUserIdWithListBarterParam.init(
        userId: userId,
        lastDoc: lastDoc,
      ),
    );
  }
}
