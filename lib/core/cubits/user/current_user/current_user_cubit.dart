import 'package:Toutly/core/models/user/saved_items/saved_item_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_create_saved_item_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_delete_saved_item_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'current_user_cubit.freezed.dart';
part 'current_user_state.dart';

@lazySingleton
class CurrentUserCubit extends Cubit<CurrentUserState> {
  final FirebaseGetUserUseCase _firebaseGetUserUseCase;
  final FirestoreGetUserUseCase _firestoreGetUserUseCase;
  final FirestoreUpdateUserUseCase _firestoreUpdateUserUseCase;
  final FirestoreCreateSavedItemUseCase _firestoreCreateSavedItemUseCase;
  final FirestoreDeleteSavedItemUseCase _firestoreDeleteSavedItemUseCase;
  final FirebaseStorage _firebaseStorage;
  final Uuid _uuid;

  final Validators validators;

  CurrentUserCubit(
    this._firebaseGetUserUseCase,
    this._firestoreGetUserUseCase,
    this._firestoreUpdateUserUseCase,
    this._firestoreCreateSavedItemUseCase,
    this._firestoreDeleteSavedItemUseCase,
    this._firebaseStorage,
    this._uuid,
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

  Future<UserModel> getCurrentUserModel() async {
    final firebaseUser = _firebaseGetUserUseCase.call(UseCaseNoParam.init());
    final currentUser = await _firestoreGetUserUseCase.call(
      UseCaseUserParamUserId.init(firebaseUser.uid),
    );

    return currentUser;
  }

  getCurrentLoggedInUser() async {
    emit(CurrentUserState.loading());
    try {
      final firebaseUser = _firebaseGetUserUseCase.call(UseCaseNoParam.init());

      if (firebaseUser != null && !firebaseUser.isAnonymous) {
        final currentUser = await _firestoreGetUserUseCase.call(
          UseCaseUserParamUserId.init(firebaseUser.uid),
        );

        emit(CurrentUserState.success(
          currentUserModel: currentUser,
          info: 'Success',
          isAnonymous: false,
        ));
      } else if (firebaseUser != null && firebaseUser.isAnonymous) {
        UserModel currentUser = UserModel(userId: firebaseUser.uid);

        emit(CurrentUserState.success(
          currentUserModel: currentUser,
          info: 'Success',
          isAnonymous: true,
        ));
      } else {
        emit(CurrentUserState.success(
          currentUserModel: null,
          info: 'Success',
          isAnonymous: false,
        ));
      }
    } on FirebaseAuthException catch (FirebaseAuthException) {
      emit(CurrentUserState.failure(FirebaseAuthException.message));
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
            await _firebaseStorage.getReferenceFromUrl(currentUser.photoUrl);
        storageRef.delete();
      }

      ///Upload profile picture in google storage
      final StorageReference storageReference =
          _firebaseStorage.ref().child(_uuid.v1());
      final fileData = await pickedFile.readAsBytes();

      final storageTaskSnapshot = await storageReference
          .putData(fileData, StorageMetadata(contentType: 'image/jpeg'))
          .onComplete;

      ///get the downloadable URL
      final url = await storageTaskSnapshot.ref.getDownloadURL();

      ///set the downloadable image url to the current user photo url.
      currentUser.photoUrl = url;

      ///finally update the current user.
      _firestoreUpdateUserUseCase.call(
        UseCaseUserParamUserModel.init(currentUser),
      );

      emit(CurrentUserState.success(
        currentUserModel: currentUser,
        info: 'Success',
        isAnonymous: false,
      ));
    } on FirebaseAuthException catch (FirebaseAuthException) {
      emit(CurrentUserState.failure(FirebaseAuthException.message));
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
    }
  }

  updateCurrentLoggedInUser(UserModel currentUser) {
    emit(CurrentUserState.loading());
    try {
      final firebaseUser = _firebaseGetUserUseCase.call(UseCaseNoParam.init());

      if (!firebaseUser.isAnonymous) {
        _firestoreUpdateUserUseCase.call(
          UseCaseUserParamUserModel.init(currentUser),
        );
        emit(CurrentUserState.success(
          currentUserModel: currentUser,
          info: 'Success',
          isAnonymous: false,
        ));
      } else {
        emit(CurrentUserState.success(
          currentUserModel: currentUser,
          info: 'Success',
          isAnonymous: true,
        ));
      }
    } on FirebaseAuthException catch (FirebaseAuthException) {
      emit(CurrentUserState.failure(FirebaseAuthException.message));
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
    }
  }

  createSavedItemForCurrentUser(
      UserModel currentUser, SavedItemModel savedItemModel) async {
    await _firestoreCreateSavedItemUseCase.call(
        UseCaseUserParamUserModelWithSavedItemModel.init(
            currentUser, savedItemModel));
  }

  deleteSavedItemForCurrentUser(
      UserModel currentUser, SavedItemModel savedItemModel) async {
    await _firestoreDeleteSavedItemUseCase.call(
        UseCaseUserParamUserModelWithSavedItemModel.init(
            currentUser, savedItemModel));
  }
}
