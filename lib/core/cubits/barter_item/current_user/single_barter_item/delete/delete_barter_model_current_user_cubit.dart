import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_barter_model_current_user_cubit.freezed.dart';
part 'delete_barter_model_current_user_state.dart';

@lazySingleton
class DeleteBarterModelCurrentUserCubit
    extends Cubit<DeleteBarterModelCurrentUserState> {
  final FirestoreBarterRepository _firestoreBarterRepository;

  DeleteBarterModelCurrentUserCubit(
    this._firestoreBarterRepository,
  ) : super(DeleteBarterModelCurrentUserState.empty());

  deleteBarterItem(BarterModel barterModel) {
    try {
      emit(DeleteBarterModelCurrentUserState.loading());

      _firestoreBarterRepository.deleteBarterItem(barterModel);

      emit(DeleteBarterModelCurrentUserState.success('Delete Success'));
    } on PlatformException catch (platformException) {
      emit(DeleteBarterModelCurrentUserState.failure(
          info: platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(DeleteBarterModelCurrentUserState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
