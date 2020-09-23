import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'public_list_barter_model_current_user_cubit.freezed.dart';
part 'public_list_barter_model_current_user_state.dart';

@lazySingleton
class PublicListBarterModelCurrentUserCubit
    extends Cubit<PublicListBarterModelCurrentUserState> {
  final FirestoreBarterRepository _firestoreBarterRepository;

  PublicListBarterModelCurrentUserCubit(
    this._firestoreBarterRepository,
  ) : super(PublicListBarterModelCurrentUserState.empty());

  getCurrentUserPublicBarterItems(String userId) async {
    try {
      emit(PublicListBarterModelCurrentUserState.loading());

      final Stream<QuerySnapshot> listings =
          _firestoreBarterRepository.getPublicBarterItemsUsingUserId(userId);

      emit(PublicListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(PublicListBarterModelCurrentUserState.failure(
          info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(PublicListBarterModelCurrentUserState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
