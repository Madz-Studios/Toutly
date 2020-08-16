import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'other_user_cubit.freezed.dart';
part 'other_user_state.dart';

@lazySingleton
class OtherUserCubit extends Cubit<OtherUserState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;
  final FirestoreUpdateUserUseCase firestoreUpdateUserUseCase;
  final FirebaseStorage firebaseStorage;
  final Uuid uuid;

  final Validators validators;

  OtherUserCubit(
    this.firebaseGetUserUseCase,
    this.firestoreGetUserUseCase,
    this.firestoreUpdateUserUseCase,
    this.firebaseStorage,
    this.uuid,
    this.validators,
  ) : super(OtherUserState.empty());

  getOtherUser(String userId) async {
    emit(OtherUserState.loading());
    try {
      final otherUser = await firestoreGetUserUseCase.call(
        UseCaseUserParamUserId.init(userId),
      );

      emit(OtherUserState.success(otherUser));
    } on PlatformException catch (platFormException) {
      emit(OtherUserState.failure(platFormException.message));
    }
  }
}
