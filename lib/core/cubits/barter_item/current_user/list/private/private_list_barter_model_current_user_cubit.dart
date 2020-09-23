import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'private_list_barter_model_current_user_cubit.freezed.dart';
part 'private_list_barter_model_current_user_state.dart';

@lazySingleton
class PrivateListBarterModelCurrentUserCubit
    extends Cubit<PrivateListBarterModelCurrentUserState> {
  final FirestoreBarterRepository _firestoreBarterRepository;

  PrivateListBarterModelCurrentUserCubit(
    this._firestoreBarterRepository,
  ) : super(PrivateListBarterModelCurrentUserState.empty());

  getCurrentUserPrivateBarterItems(String userId) async {
    try {
      emit(PrivateListBarterModelCurrentUserState.loading());
      final Stream<QuerySnapshot> listings =
          _firestoreBarterRepository.getPrivateBarterItemsUsingUserId(userId);

      emit(PrivateListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(PrivateListBarterModelCurrentUserState.failure(
          info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(PrivateListBarterModelCurrentUserState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
