import 'package:Toutly/core/models/algolia/algolia_geo_location.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/geo_firepoint_data/geo_fire_point_data.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'barter_items_cubit.freezed.dart';
part 'barter_items_state.dart';

@lazySingleton
class BarterItemsCubit extends Cubit<BarterItemsState> {
  final FirestoreBarterRepository _firestoreBarterRepository;

  BarterItemsCubit(
    this._firestoreBarterRepository,
  ) : super(BarterItemsState.empty());

  getBarterItem(String itemId) async {
    try {
      emit(BarterItemsState.loading());
      final BarterModel barterItem =
          await _firestoreBarterRepository.getBarterUsingItemId(itemId);

      emit(BarterItemsState.success(barterItem: barterItem, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(BarterItemsState.failure(info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(BarterItemsState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
