import 'package:Toutly/core/usecases/barter_item/firestore_get_private_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'private_list_barter_model_current_user_cubit.freezed.dart';
part 'private_list_barter_model_current_user_state.dart';

@lazySingleton
class PrivateListBarterModelCurrentUserCubit
    extends Cubit<PrivateListBarterModelCurrentUserState> {
  final FirestoreGetPrivateBarterItemsUsingUserIdUseCase
      firestoreGetPrivateBarterItemsUsingUserIdUseCase;

  PrivateListBarterModelCurrentUserCubit(
    this.firestoreGetPrivateBarterItemsUsingUserIdUseCase,
  ) : super(PrivateListBarterModelCurrentUserState.empty());

  getCurrentUserPrivateBarterItems(String userId) async {
    try {
      emit(PrivateListBarterModelCurrentUserState.loading());
      final listings = firestoreGetPrivateBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdParam.init(userId: userId),
      );
      emit(PrivateListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(PrivateListBarterModelCurrentUserState.failure(
          info: platformException.message));
    } on Exception catch (e) {
      emit(PrivateListBarterModelCurrentUserState.failure(info: e.toString()));
    }
  }
}
