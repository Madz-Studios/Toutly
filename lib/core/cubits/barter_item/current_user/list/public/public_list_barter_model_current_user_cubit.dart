import 'package:Toutly/core/usecases/barter_item/firestore_get_public_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'public_list_barter_model_current_user_cubit.freezed.dart';
part 'public_list_barter_model_current_user_state.dart';

@lazySingleton
class PublicListBarterModelCurrentUserCubit
    extends Cubit<PublicListBarterModelCurrentUserState> {
  final FirestoreGetPublicBarterItemsUsingUserIdUseCase
      firestoreGetPublicBarterItemsUsingUserIdUseCase;

  PublicListBarterModelCurrentUserCubit(
    this.firestoreGetPublicBarterItemsUsingUserIdUseCase,
  ) : super(PublicListBarterModelCurrentUserState.empty());

  getCurrentUserPublicBarterItems(String userId) async {
    try {
      emit(PublicListBarterModelCurrentUserState.loading());

      final listings = firestoreGetPublicBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdParam.init(userId: userId),
      );
      emit(PublicListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(PublicListBarterModelCurrentUserState.failure(
          info: platformException.message));
    } on Exception catch (e) {
      emit(PublicListBarterModelCurrentUserState.failure(info: e.toString()));
    }
  }
}
