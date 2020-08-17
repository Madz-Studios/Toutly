import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'other_user_cubit.freezed.dart';
part 'other_user_state.dart';

@lazySingleton
class OtherUserCubit extends Cubit<OtherUserState> {
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  OtherUserCubit(
    this.firestoreGetUserUseCase,
  ) : super(OtherUserState.empty());

  Future<UserModel> getOtherUser(String userId) async {
    try {
      final otherUser = firestoreGetUserUseCase.call(
        UseCaseUserParamUserId.init(userId),
      );
      return otherUser;
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
