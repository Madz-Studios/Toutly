import 'package:Toutly/core/models/algolia/algolia_geo_location.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter_item/firestore_create_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreCreateBarterItemUseCase firestoreCreateBarterItemUseCase;

  PostBarterCubit(
    this.firebaseStorage,
    this.uuid,
    this.validators,
    this.firebaseGetUserUseCase,
    this.firestoreCreateBarterItemUseCase,
  ) : super(PostBarterState.empty());

  postButtonPressed({
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
      final firebaseUser = firebaseGetUserUseCase.call(
        UseCaseNoParam.init(),
      );

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
        userId: firebaseUser.uid,
      );

      ///create a barter item in the barter market
      await firestoreCreateBarterItemUseCase.call(
        UseCaseBarterModelParam.init(
          barterModel: barterModel,
        ),
      );

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
