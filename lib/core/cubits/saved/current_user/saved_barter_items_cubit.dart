import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/saved_items/saved_item_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/shared/util/connection_util.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'saved_barter_items_cubit.freezed.dart';
part 'saved_barter_items_state.dart';

@lazySingleton
class SavedBarterItemCubit extends Cubit<SavedBarterItemsState> {
  final FirestoreBarterRepository _firestoreBarterRepository;

  SavedBarterItemCubit(
    this._firestoreBarterRepository,
  ) : super(SavedBarterItemsState.empty());

  getCurrentUserLikesBarterItems(List<SavedItemModel> savedItems) async {
    try {
      emit(SavedBarterItemsState.loading());
      List<String> itemIds = [];

      for (final items in savedItems) {
        itemIds.add(items.itemId);
      }

      bool isConnected = await isConnectedToInternet();
      if (isConnected) {
        final List<BarterModel> listings = await _firestoreBarterRepository
            .getFutureAllBarterItemsUsingItemIdList(itemIds);
        emit(
            SavedBarterItemsState.success(listings: listings, info: 'Success'));
      } else {
        emit(SavedBarterItemsState.failure(
            info: 'There was no connection. Please connect to the internet.'));
      }
    } on PlatformException catch (platformException) {
      emit(SavedBarterItemsState.failure(info: platformException.message));
    } on Exception catch (e) {
      emit(SavedBarterItemsState.failure(info: e.toString()));
    }
  }
}
