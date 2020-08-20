import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter_messages/items/firestore_get_all_user_offer_items_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'offer_items_cubit.freezed.dart';
part 'offer_items_state.dart';

@lazySingleton
class OfferItemsCubit extends Cubit<OfferItemsState> {
  final FirestoreGetAllOfferItemsUseCase firestoreGetAllOfferMessagesUseCase;

  OfferItemsCubit(
    this.firestoreGetAllOfferMessagesUseCase,
  ) : super(OfferItemsState.empty());

  getOfferItems(List<String> itemIds) async {
    try {
      emit(OfferItemsState.loading());
      final offerItems = await firestoreGetAllOfferMessagesUseCase.call(
        UseCaseItemIdListParam.init(itemIds),
      );
      emit(OfferItemsState.success(offerItems: offerItems, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(OfferItemsState.failure(platformException.message));
    }
  }
}
