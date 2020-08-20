import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'saved_barter_items_cubit.freezed.dart';
part 'saved_barter_items_state.dart';

@lazySingleton
class SavedBarterItemCubit extends Cubit<SavedBarterItemsState> {
  final FirestoreGetAllLikesBarterItemsUsingUserIdUseCase
      firestoreGetAllLikesBarterItemsUsingUserIdUseCase;

  SavedBarterItemCubit(
    this.firestoreGetAllLikesBarterItemsUsingUserIdUseCase,
  ) : super(SavedBarterItemsState.empty());

  getCurrentUserLikesBarterItems(List<String> itemIds) async {
    try {
      emit(SavedBarterItemsState.loading());
      final listings =
          await firestoreGetAllLikesBarterItemsUsingUserIdUseCase.call(
        UseCaseItemIdListParam.init(itemIds),
      );
      emit(SavedBarterItemsState.success(listings: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(SavedBarterItemsState.failure(info: platformException.message));
    }
  }
}