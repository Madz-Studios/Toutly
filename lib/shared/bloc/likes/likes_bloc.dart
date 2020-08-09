import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter/firestore_get_all_favourite_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'likes_bloc.freezed.dart';
part 'likes_event.dart';
part 'likes_state.dart';

@lazySingleton
class LikesBloc extends Bloc<LikesEvent, LikesState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreGetAllFavouriteBarterItemsUsingUserIdUseCase
      firestoreGetAllFavouriteBarterItemsUsingUserIdUseCase;

  LikesBloc(
    this.firebaseGetUserUseCase,
    this.firestoreGetAllFavouriteBarterItemsUsingUserIdUseCase,
  ) : super(LikesState.empty());

  @override
  Stream<LikesState> mapEventToState(LikesEvent event) async* {
    yield* event.map(
      getAllUserFavouriteBarterItems: (e) async* {
        yield LikesState.loading();
        try {
          final items = getAllUserFavouriteBarterItems(e.itemIds);
          yield LikesState.success(
              userFavouriteBarterItems: items, info: 'Success');
        } on PlatformException catch (platformException) {
          yield LikesState.failure(info: platformException.message);
        }
      },
      initial: (e) async* {},
    );
  }

  Future<List<BarterModel>> getAllUserFavouriteBarterItems(
      List<String> itemIds) {
    final listings = firestoreGetAllFavouriteBarterItemsUsingUserIdUseCase.call(
      UseCaseUserIdWithItemIdListParam.init(itemIds),
    );

    return listings;
  }
}
