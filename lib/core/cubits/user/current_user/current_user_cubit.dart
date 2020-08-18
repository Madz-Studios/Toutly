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

part 'current_user_cubit.freezed.dart';
part 'current_user_state.dart';

@lazySingleton
class CurrentUserCubit extends Cubit<CurrentUserState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;
  final FirestoreUpdateUserUseCase firestoreUpdateUserUseCase;
  final FirebaseStorage firebaseStorage;
  final Uuid uuid;

  final Validators validators;

  CurrentUserCubit(
    this.firebaseGetUserUseCase,
    this.firestoreGetUserUseCase,
    this.firestoreUpdateUserUseCase,
    this.firebaseStorage,
    this.uuid,
    this.validators,
  ) : super(CurrentUserState.empty());

  nameChanged(String name) {
    emit(
      state.copyWith(
        isNameValid: validators.isValidTextLength4To30Chars(name),
      ),
    );
  }

  locationChanged(String location) {
    emit(
      state.copyWith(
        isLocationValid:
            validators.isValidTextLengthMoreThanOrEqualToFourChars(location),
      ),
    );
  }

  getCurrentLoggedInUser() async {
    emit(CurrentUserState.loading());
    try {
      final firebaseUser = firebaseGetUserUseCase.call(UseCaseNoParam.init());

      final currentUser = await firestoreGetUserUseCase.call(
        UseCaseUserParamUserId.init(firebaseUser.uid),
      );

      emit(CurrentUserState.success(currentUser));
    } on PlatformException catch (platFormException) {
      emit(CurrentUserState.failure(platFormException.message));
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
    }
  }

  updateCurrentLoggedInUserProfilePicture(
      PickedFile pickedFile, UserModel currentUser) async {
    emit(CurrentUserState.loading());
    try {
      /// delete the previous profile photo in cloud storage

      if (currentUser.photoUrl != null) {
        final storageRef =
            await firebaseStorage.getReferenceFromUrl(currentUser.photoUrl);
        storageRef.delete();
      }

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

      emit(CurrentUserState.success(currentUser));
    } on PlatformException catch (platFormException) {
      emit(CurrentUserState.failure(platFormException.message));
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
    }
  }

  updateCurrentLoggedInUser(UserModel currentUser) {
    emit(CurrentUserState.loading());
    try {
      firestoreUpdateUserUseCase.call(
        UseCaseUserParamUserModel.init(currentUser),
      );
      emit(CurrentUserState.success(currentUser));
    } on PlatformException catch (platFormException) {
      emit(CurrentUserState.failure(platFormException.message));
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
    }
  }
}
