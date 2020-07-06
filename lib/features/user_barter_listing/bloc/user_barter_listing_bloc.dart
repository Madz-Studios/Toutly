import 'package:Toutly/core/usecases/barter/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/local_shared_pref/local_shared_pref_get_current_user_id_usecase.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_barter_listing_bloc.freezed.dart';
part 'user_barter_listing_event.dart';
part 'user_barter_listing_state.dart';

@lazySingleton
class UserItemsBloc
    extends Bloc<UserBarterListingEvent, UserBarterListingState> {
  final LocalSharedPrefGetCurrentUserIdUseCase
      localSharedPrefGetCurrentUserIdUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  UserItemsBloc({
    this.localSharedPrefGetCurrentUserIdUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
  }) : super(UserBarterListingState.initial());

  @override
  Stream<UserBarterListingState> mapEventToState(
      UserBarterListingEvent event) async* {}

  Stream<QuerySnapshot> getAllQueryMessages() {
    final userId =
        localSharedPrefGetCurrentUserIdUseCase.call(UseCaseNoParam.init());

    return firestoreGetAllBarterItemsUsingUserIdUseCase.call(
      UseCaseUserIdWithListBarterParam.init(
        userId: userId,
      ),
    );
  }
}
