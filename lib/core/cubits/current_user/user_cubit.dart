import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

@lazySingleton
class UserCubit extends Cubit<UserState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;
  final FirestoreUpdateUserUseCase firestoreUpdateUserUseCase;
  final FirebaseStorage firebaseStorage;
  final Uuid uuid;

  final Validators validators;

  UserCubit(
    this.firebaseGetUserUseCase,
    this.firestoreGetUserUseCase,
    this.firestoreUpdateUserUseCase,
    this.firebaseStorage,
    this.uuid,
    this.validators,
  ) : super(UserState.empty());

  nameChanged(String name) {
    emit(
      state.copyWith(
        isNameValid: validators.isValidTextLength4To30Chars(name),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      ),
    );
  }

  locationChanged(String location) {
    emit(state.copyWith(
      isLocationValid:
          validators.isValidTextLengthMoreThanOrEqualToFourChars(location),
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
      info: '',
    ));
  }

  getCurrentLoggedInUser() async {
    emit(UserState.loading());
    try {
      final firebaseUser =
          await firebaseGetUserUseCase.call(UseCaseNoParam.init());

      final currentUser = await firestoreGetUserUseCase.call(
        UseCaseUserParamUserId.init(firebaseUser.uid),
      );

      emit(UserState.success(userModel: currentUser));
    } on PlatformException catch (platFormException) {
      emit(UserState.failure(info: platFormException.message));
    }
  }

  updateCurrentLoggedInUserProfilePicture(
      PickedFile pickedFile, UserModel currentUser) async {
    emit(UserState.loading());
    try {
      ///Upload profile picture in google storage
      final StorageReference storageReference =
          firebaseStorage.ref().child(uuid.v1());
      final fileData = await pickedFile.readAsBytes();

      final storageTaskSnapshot = await storageReference
          .putData(fileData, StorageMetadata(contentType: 'image/jpeg'))
          .onComplete;

      ///get the downloadable URL
      final url = await storageTaskSnapshot.ref.getDownloadURL();

      ///set the downloadable image url to the current user photo url.
      currentUser.photoUrl = url;

      ///finally update the current user.
      firestoreUpdateUserUseCase.call(
        UseCaseUserParamUserModel.init(currentUser),
      );

      emit(UserState.success(userModel: currentUser));
    } on PlatformException catch (platFormException) {
      emit(UserState.failure(info: platFormException.message));
    }
  }

  updateCurrentLoggedInUser(UserModel currentUser) {
    emit(UserState.loading());
    try {
      firestoreUpdateUserUseCase.call(
        UseCaseUserParamUserModel.init(currentUser),
      );
      emit(UserState.success(userModel: currentUser));
    } on PlatformException catch (platFormException) {
      emit(UserState.failure(info: platFormException.message));
    }
  }
}

//  Future<UserModel> getUser(String userId) async {
//    final user = firestoreGetUserUseCase.call(
//      UseCaseUserParamUserId.init(userId),
//    );
//
//    return user;
//  }
