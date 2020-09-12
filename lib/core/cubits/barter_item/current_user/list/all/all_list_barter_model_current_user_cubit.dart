import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_update_all_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_list_barter_model_current_user_cubit.freezed.dart';
part 'all_list_barter_model_current_user_state.dart';

@lazySingleton
class AllListBarterModelCurrentUserCubit
    extends Cubit<AllListBarterModelCurrentUserState> {
  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;
  final FirestoreUpdateAllBarterItemUseCase
      _firestoreUpdateAllBarterItemUseCase;

  AllListBarterModelCurrentUserCubit(
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
    this._firestoreUpdateAllBarterItemUseCase,
  ) : super(AllListBarterModelCurrentUserState.empty());

  getCurrentUserAllBarterItems(String userId) async {
    try {
      emit(AllListBarterModelCurrentUserState.loading());
      final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdParam.init(userId: userId),
      );
      emit(AllListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(AllListBarterModelCurrentUserState.failure(
          info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(AllListBarterModelCurrentUserState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  updateAllBarterItemsOfCurrentUser(UserModel userModel) async {
    try {
      emit(AllListBarterModelCurrentUserState.loading());
      _firestoreUpdateAllBarterItemUseCase.call(
        UseCaseUserParamUserModel.init(userModel),
      );
      final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
        UseCaseUserIdParam.init(userId: userModel.userId),
      );

      emit(AllListBarterModelCurrentUserState.success(
          userBarterItems: listings, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(AllListBarterModelCurrentUserState.failure(
          info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(AllListBarterModelCurrentUserState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
