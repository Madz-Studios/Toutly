import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter_messages/items/firestore_get_all_user_barter_items_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'barter_items_cubit.freezed.dart';
part 'barter_items_state.dart';

@lazySingleton
class BarterItemsCubit extends Cubit<BarterItemsState> {
  final FirestoreGetAllBarterItemsUseCase firestoreGetAllBarterItemsUseCase;

  BarterItemsCubit(
    this.firestoreGetAllBarterItemsUseCase,
  ) : super(BarterItemsState.empty());

  getBarterItem(String itemId) async {
    try {
      emit(BarterItemsState.loading());
      final barterItem = await firestoreGetAllBarterItemsUseCase.call(
        UseCaseItemIdParam.init(itemId),
      );
      emit(BarterItemsState.success(barterItem: barterItem, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(BarterItemsState.failure(platformException.message));
    }
  }
}
