import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_delete_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_barter_model_current_user_cubit.freezed.dart';
part 'delete_barter_model_current_user_state.dart';

@lazySingleton
class DeleteBarterModelCurrentUserCubit
    extends Cubit<DeleteBarterModelCurrentUserState> {
  final FirestoreDeleteBarterItemUseCase firestoreDeleteBarterItemUseCase;

  DeleteBarterModelCurrentUserCubit(
    this.firestoreDeleteBarterItemUseCase,
  ) : super(DeleteBarterModelCurrentUserState.empty());

  deleteBarterItem(BarterModel barterModel) {
    try {
      emit(DeleteBarterModelCurrentUserState.loading());

      firestoreDeleteBarterItemUseCase.call(
        UseCaseBarterModelParam.init(barterModel: barterModel),
      );
      emit(DeleteBarterModelCurrentUserState.success('Delete Success'));
    } on PlatformException catch (platformException) {
      emit(DeleteBarterModelCurrentUserState.failure(
          info: platformException.message));
    } on Exception catch (e) {
      emit(DeleteBarterModelCurrentUserState.failure(info: e.toString()));
    }
  }
}
