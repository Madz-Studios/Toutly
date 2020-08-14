import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'barter_cubit.freezed.dart';
part 'barter_state.dart';

@lazySingleton
class BarterCubit extends Cubit<BarterState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  final FirestoreGetAllLikesBarterItemsUsingUserIdUseCase
      firestoreGetAllLikesBarterItemsUsingUserIdUseCase;

  BarterCubit(
    this.firebaseGetUserUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
    this.firestoreGetAllLikesBarterItemsUsingUserIdUseCase,
  ) : super(BarterState.empty());

  getUserBarterItems(String userId) {
    try {
      emit(BarterState.loading());
      final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdParam.init(userId: userId),
      );
      emit(BarterState.success(userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(BarterState.failure(info: platformException.message));
    }
  }

  Future<List<BarterModel>> getAllUserFavouriteBarterItems(
      List<String> itemIds) {
    final listings = firestoreGetAllLikesBarterItemsUsingUserIdUseCase.call(
      UseCaseUserIdWithItemIdListParam.init(itemIds),
    );

    return listings;
  }
}
