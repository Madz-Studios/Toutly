import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/models/geo_firepoint_data/geo_fire_point_data.dart';
import 'package:Toutly/core/models/user/saved_items/saved_item_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
import 'package:Toutly/shared/util/connection_util.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'current_user_cubit.freezed.dart';
part 'current_user_state.dart';

@lazySingleton
class CurrentUserCubit extends Cubit<CurrentUserState> {
  final FirebaseStorage _firebaseStorage;
  final Uuid _uuid;
  final Geoflutterfire _geoFlutterFire;

  final FirebaseAuthUserRepository _firebaseAuthUserRepository;
  final FirestoreUserRepository _firestoreUserRepository;
  final Validators validators;

  final LocationCubit _locationCubit;

  CurrentUserCubit(
    this._firebaseAuthUserRepository,
    this._firestoreUserRepository,
    this._firebaseStorage,
    this._uuid,
    this._geoFlutterFire,
    this.validators,
    this._locationCubit,
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
    final User firebaseUser = _firebaseAuthUserRepository.getUser();
    final currentUser =
        await _firestoreUserRepository.getUserUsingUserId(firebaseUser.uid);

    return currentUser;
  }

  getCurrentLoggedInUser() async {
    try {
      bool isConnected = await isConnectedToInternet();
      if (isConnected) {
        emit(CurrentUserState.loading());
        final User firebaseUser = _firebaseAuthUserRepository.getUser();

        if (firebaseUser != null && !firebaseUser.isAnonymous) {
          final currentUser = await _firestoreUserRepository
              .getUserUsingUserId(firebaseUser.uid);

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
      } else {
        emit(CurrentUserState.failure(
            'There was no connection. Please connect to the internet.'));
      }
    } on FirebaseAuthException catch (FirebaseAuthException) {
      emit(CurrentUserState.failure(FirebaseAuthException.message));
      throw FlutterError(FirebaseAuthException.message);
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
      throw FlutterError(e.toString());
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
      _firestoreUserRepository.updateUserUsingUserModel(currentUser);

      emit(CurrentUserState.success(
        currentUserModel: currentUser,
        info: 'Success',
        isAnonymous: false,
      ));
    } on FirebaseAuthException catch (FirebaseAuthException) {
      emit(CurrentUserState.failure(FirebaseAuthException.message));
      throw FlutterError(FirebaseAuthException.message);
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
      throw FlutterError(e.toString());
    }
  }

  updateCurrentLoggedInUser(UserModel currentUser) async {
    emit(CurrentUserState.loading());
    try {
      final User firebaseUser = _firebaseAuthUserRepository.getUser();

      if (!firebaseUser.isAnonymous) {
        ///update the current user address based on the current location
        String subLocality =
            "${_locationCubit.state.placeMark.subLocality ?? ''}";
        String locality = "${_locationCubit.state.placeMark.locality ?? ''}";

        String address = '';
        if (subLocality.isNotEmpty) {
          address = address + subLocality + ", ";
        }
        if (locality.isNotEmpty) {
          address = address + locality;
        }

        currentUser.address = address;

        currentUser.geoLocation = _locationCubit.state.geoPoint;

        GeoFirePoint geoFirePoint = _geoFlutterFire.point(
          latitude: _locationCubit.state.geoPoint.latitude,
          longitude: _locationCubit.state.geoPoint.longitude,
        );

        ///update current user geo hash
        currentUser.geoHash = geoFirePoint.hash;

        GeoFirePointData geoFirePointData = GeoFirePointData(
          geopoint: geoFirePoint.geoPoint,
          geohash: geoFirePoint.hash,
        );

        currentUser.geoFirePointData = geoFirePointData;

        _firestoreUserRepository.updateUserUsingUserModel(currentUser);

        ///if the current user change name or profile photo, update all the posted barter items.
        _allListBarterModelCurrentUserCubit
            .updateAllBarterItemsOfCurrentUser(currentUser);

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
    } on FirebaseAuthException catch (firebaseAuthException) {
      emit(CurrentUserState.failure(firebaseAuthException.message));
      throw FlutterError(firebaseAuthException.message);
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
      throw FlutterError(e.toString());
    }
  }

  createSavedItemForCurrentUser(
      UserModel currentUser, SavedItemModel savedItemModel) async {
    try {
      await _firestoreUserRepository.createSavedItem(
          currentUser, savedItemModel);
    } on PlatformException catch (platformException) {
      emit(CurrentUserState.failure(platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
      throw FlutterError(e.toString());
    }
  }

  deleteSavedItemForCurrentUser(
      UserModel currentUser, SavedItemModel savedItemModel) async {
    try {
      await _firestoreUserRepository.deleteSavedItem(
          currentUser, savedItemModel);
    } on PlatformException catch (platformException) {
      emit(CurrentUserState.failure(platformException.message));
      throw FlutterError(platformException.message);
    } on Exception catch (e) {
      emit(CurrentUserState.failure(e.toString()));
      throw FlutterError(e.toString());
    }
  }
}
