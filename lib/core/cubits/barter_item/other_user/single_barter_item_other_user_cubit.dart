import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'single_barter_item_other_user_cubit.freezed.dart';
part 'single_barter_item_other_user_state.dart';

@lazySingleton
class SingleBarterItemOtherUserCubit
    extends Cubit<SingleBarterItemOtherUserState> {
  SingleBarterItemOtherUserCubit()
      : super(SingleBarterItemOtherUserState.empty());

  setOtherUserSingleBarterItem(BarterModel otherUserBarterModel) async {
    try {
      emit(SingleBarterItemOtherUserState.loading());

      emit(SingleBarterItemOtherUserState.success(
          otherUserBarterModel: otherUserBarterModel, info: 'Success'));
    } on PlatformException catch (platformException) {
      emit(SingleBarterItemOtherUserState.failure(
          info: platformException.message));
    }
  }
}
