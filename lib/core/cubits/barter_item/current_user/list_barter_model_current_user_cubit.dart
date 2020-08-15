import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_barter_model_current_user_cubit.freezed.dart';
part 'list_barter_model_current_user_state.dart';

@lazySingleton
class ListBarterModelCurrentUserCubit
    extends Cubit<ListBarterModelCurrentUserState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  final FirestoreGetAllLikesBarterItemsUsingUserIdUseCase
      firestoreGetAllLikesBarterItemsUsingUserIdUseCase;

  ListBarterModelCurrentUserCubit(
    this.firebaseGetUserUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
    this.firestoreGetAllLikesBarterItemsUsingUserIdUseCase,
  ) : super(ListBarterModelCurrentUserState.empty());

  getCurrentUserBarterItems() async {
    try {
      emit(ListBarterModelCurrentUserState.loading());
      final currentFirebaseUser =
          await firebaseGetUserUseCase.call(UseCaseNoParam.init());

      final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdParam.init(userId: currentFirebaseUser.uid),
      );
      emit(ListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(ListBarterModelCurrentUserState.failure(
          info: platformException.message));
    }
  }
}
