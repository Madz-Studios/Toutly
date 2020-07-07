import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter/firestore_get_all_barter_items_using_user_id.dart';
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
class UserBarterListingBloc
    extends Bloc<UserBarterListingEvent, UserBarterListingState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  UserBarterListingBloc({
    this.firebaseGetUserUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
  }) : super(UserBarterListingState.initial());

  @override
  Stream<UserBarterListingState> mapEventToState(
      UserBarterListingEvent event) async* {
    yield* event.map(
      init: (_) async* {},
      viewBarterItems: (e) async* {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
          UseCaseUserIdWithListBarterParam.init(
            userId: firebaseUser.uid,
          ),
        );

        yield UserBarterListingState.loadUserListing(listings);
      },
    );
  }
}
