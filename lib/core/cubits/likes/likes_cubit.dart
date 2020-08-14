import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'likes_cubit.freezed.dart';
part 'likes_state.dart';

@lazySingleton
class LikesCubit extends Cubit<LikesState> {
  final FirestoreGetAllLikesBarterItemsUsingUserIdUseCase
      firestoreGetAllLikesBarterItemsUsingUserIdUseCase;

  LikesCubit(
    this.firestoreGetAllLikesBarterItemsUsingUserIdUseCase,
  ) : super(LikesState.empty());

  getAllUserLikesBarterItems(List<String> itemIds) {
    try {
      emit(LikesState.loading());
      final listings = firestoreGetAllLikesBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdWithItemIdListParam.init(itemIds),
      );
      emit(LikesState.success(listings: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(LikesState.failure(info: platformException.message));
    }
  }
}
