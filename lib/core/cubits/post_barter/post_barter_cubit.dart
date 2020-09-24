import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/models/algolia/algolia_geo_location.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/geo_firepoint_data/geo_fire_point_data.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'post_barter_cubit.freezed.dart';
part 'post_barter_state.dart';

@lazySingleton
class PostBarterCubit extends Cubit<PostBarterState> {
  final FirebaseStorage firebaseStorage;
  final Uuid uuid;
  final Validators validators;
  final Geoflutterfire _geoFlutterFire;
  final LocationCubit _locationCubit;

  final FirestoreBarterRepository _firestoreBarterRepository;
  PostBarterCubit(
    this.firebaseStorage,
    this.uuid,
    this.validators,
    this._geoFlutterFire,
    this._locationCubit,
    this._firestoreBarterRepository,
  ) : super(PostBarterState.empty());

  postButtonPressed({
    @required UserModel currentUser,
    @required String category,
    @required String title,
    @required String description,
    @required String preferredItem,
    @required String address,
    @required GeoPoint geoLocation,
    @required String geoHash,
    @required String privacy,
  }) async {
    try {
      Map<String, PickedFile> pickedFileList = state.pickedFileList;

      emit(PostBarterState.loading(pickedFileList));

      ///Upload the images in cloud storage and get the download url list.
      List<String> _photosUrl = List();
      for (final entry in pickedFileList.entries) {
        final pickedFile = entry.value;

        final StorageReference storageReference =
            firebaseStorage.ref().child(uuid.v1());
        final fileData = await pickedFile.readAsBytes();

        final storageTaskSnapshot = await storageReference
            .putData(fileData, StorageMetadata(contentType: 'image/jpeg'))
            .onComplete;

        final url = await storageTaskSnapshot.ref.getDownloadURL();
        _photosUrl.add(url);
      }

      String itemId = uuid.v4();

      GeoFirePoint geoFirePoint = _geoFlutterFire.point(
        latitude: _locationCubit.state.geoPoint.latitude,
        longitude: _locationCubit.state.geoPoint.longitude,
      );

      GeoFirePointData geoFirePointData = GeoFirePointData(
        geopoint: geoFirePoint.geoPoint,
        geohash: geoFirePoint.hash,
      );

      BarterModel barterModel = BarterModel(
        active: true,
        category: category,
        dateCreated: DateTime.now(),
        dateUpdated: DateTime.now(),
        dateDoneDeal: null,
        description: description,
        likes: 0,
        itemId: itemId,
        geoHash: geoHash,
        geoPoint: geoLocation,
        geoFirePointData: geoFirePointData,
        algoliaGeolocation: AlgoliaGeolocation(
          lat: geoLocation.latitude,
          lng: geoLocation.longitude,
        ),
        address: address,
        photosUrl: _photosUrl,
        preferredItem: preferredItem,
        publicAccess:
            privacy == AppConstants.privacyList[0], // is public access true
        title: title,
        userId: currentUser.userId,
        userPhotoUrl: currentUser.photoUrl,
        userFullName: currentUser.name,
      );

      ///create a barter item in the barter market

      await _firestoreBarterRepository.createBarterMarketItem(barterModel);

      emit(PostBarterState.success(
        info: 'Successfully posted the item.',
        barterModel: barterModel,
        pickedFileList: pickedFileList,
      ));
    } on PlatformException catch (platFormException) {
      emit(PostBarterState.failure(info: platFormException.message));
    } on Exception catch (e) {
      emit(PostBarterState.failure(info: e.toString()));
    }
  }

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

  locationChanged(String location) {
    emit(state.copyWith(
      isLocationValid:
          validators.isValidTextLengthMoreThanOrEqualToFourChars(location),
    ));
  }

  addPhotoToList(PickedFile pickedFile) {
    Map<String, PickedFile> newItems = Map.from(state.pickedFileList);
    newItems.putIfAbsent(pickedFile.path, () => pickedFile);
    emit(state.copyWith(
      pickedFileList: newItems,
    ));
  }

  removePhotoFromList(PickedFile pickedFile) {
    Map<String, PickedFile> newItems = Map.from(state.pickedFileList);
    newItems.remove(pickedFile.path);
    emit(state.copyWith(
      pickedFileList: newItems,
    ));
  }

  reset() {
    emit(PostBarterState.empty());
  }
}
