import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'offer_items_cubit.freezed.dart';
part 'offer_items_state.dart';

@lazySingleton
class OfferItemsCubit extends Cubit<OfferItemsState> {
  final FirestoreBarterRepository _firestoreBarterRepository;

  OfferItemsCubit(
    this._firestoreBarterRepository,
  ) : super(OfferItemsState.empty());

  getOfferItems(List<String> itemIds) async {
    try {
      emit(OfferItemsState.loading());
      final List<BarterModel> offerItems = await _firestoreBarterRepository
          .getFutureAllBarterItemsUsingItemIdList(itemIds);
      emit(OfferItemsState.success(offerItems: offerItems, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(OfferItemsState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(OfferItemsState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
