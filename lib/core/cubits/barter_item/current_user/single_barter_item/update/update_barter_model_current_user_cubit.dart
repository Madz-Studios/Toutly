import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_update_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_barter_model_current_user_cubit.freezed.dart';
part 'update_barter_model_current_user_state.dart';

@lazySingleton
class UpdateBarterModelCurrentUserCubit
    extends Cubit<UpdateBarterModelCurrentUserState> {
  final FirestoreUpdateBarterItemUseCase firestoreUpdateBarterItemUseCase;

  UpdateBarterModelCurrentUserCubit(
    this.firestoreUpdateBarterItemUseCase,
  ) : super(UpdateBarterModelCurrentUserState.empty());

  updateBarterItem(BarterModel barterModel) {
    try {
      emit(UpdateBarterModelCurrentUserState.loading());

      firestoreUpdateBarterItemUseCase.call(
        UseCaseBarterModelParam.init(barterModel: barterModel),
      );
      emit(UpdateBarterModelCurrentUserState.success('Update Success'));
    } on PlatformException catch (platformException) {
      emit(UpdateBarterModelCurrentUserState.failure(
          info: platformException.message));
    } on Exception catch (e) {
      emit(UpdateBarterModelCurrentUserState.failure(info: e.toString()));
    }
  }
}
