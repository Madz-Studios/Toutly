import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter/firestore_delete_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'view_barter_item_bloc.freezed.dart';
part 'view_barter_item_event.dart';
part 'view_barter_item_state.dart';

@lazySingleton
class ViewBarterItemBloc
    extends Bloc<ViewBarterItemEvent, ViewBarterItemState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreDeleteBarterItemUseCase firestoreDeleteBarterItemUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  ViewBarterItemBloc(
    this.firebaseGetUserUseCase,
    this.firestoreDeleteBarterItemUseCase,
    this.firestoreGetUserUseCase,
  ) : super(ViewBarterItemState.init());

  @override
  Stream<ViewBarterItemState> mapEventToState(
      ViewBarterItemEvent event) async* {
    yield* event.map(
      initial: (_) async* {},
      viewBarterItem: (e) async* {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        final currentUser = await firestoreGetUserUseCase
            .call(UseCaseUserParamUserId.init(firebaseUser.uid));

        yield ViewBarterItemState.loadBarterItem(
          currentUser: currentUser,
          barterModel: e.barterModel,
        );
      },
      deleteBarterItem: (e) async* {
        firestoreDeleteBarterItemUseCase.call(
          UseCaseBarterModelParam.init(barterModel: e.barterModel),
        );
      },
    );
  }
}
