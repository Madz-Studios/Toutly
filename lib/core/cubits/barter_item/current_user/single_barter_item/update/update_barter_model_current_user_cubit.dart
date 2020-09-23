import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_barter_model_current_user_cubit.freezed.dart';
part 'update_barter_model_current_user_state.dart';

@lazySingleton
class UpdateBarterModelCurrentUserCubit
    extends Cubit<UpdateBarterModelCurrentUserState> {
  final FirestoreBarterRepository _firestoreBarterRepository;
  final Validators validators;

  UpdateBarterModelCurrentUserCubit(
    this._firestoreBarterRepository,
    this.validators,
  ) : super(UpdateBarterModelCurrentUserState.empty());

  titleChanged(String title) {
    emit(state.copyWith(
      isTitleValid:
          validators.isValidTextLengthMoreThanOrEqualToFourChars(title),
    ));
  }

  descriptionChanged(String descriptionChanged) {
    emit(state.copyWith(
      isDescriptionValid: validators
          .isValidTextLengthMoreThanOrEqualToFourChars(descriptionChanged),
    ));
  }

  preferredItemChanged(String preferredItem) {
    emit(state.copyWith(
      isPreferredItemValid:
          validators.isValidTextLengthMoreThanOrEqualToFourChars(preferredItem),
    ));
  }

  updateBarterItem(BarterModel barterModel) async {
    try {
      emit(UpdateBarterModelCurrentUserState.loading());

      await _firestoreBarterRepository.updateBarterItem(barterModel);

      emit(UpdateBarterModelCurrentUserState.success('Update Success'));
    } on PlatformException catch (platformException) {
      emit(UpdateBarterModelCurrentUserState.failure(
          info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(UpdateBarterModelCurrentUserState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
