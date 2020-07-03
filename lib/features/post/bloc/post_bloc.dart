import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter/firestore_create_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/barter/firestore_update_barter_item_use_case.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'post_bloc.freezed.dart';
part 'post_event.dart';
part 'post_state.dart';

@lazySingleton
class PostBloc extends Bloc<PostEvent, PostState> {
  final FirebaseStorage firebaseStorage;
  final Uuid uuid;
  final Validators validators;

  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreCreateBarterItemUseCase firestoreCreateBarterItemUseCase;
  final FirestoreUpdateBarterItemUseCase firestoreUpdateBarterItemUseCase;

  PostBloc({
    @required this.firebaseStorage,
    @required this.uuid,
    @required this.validators,
    @required this.firebaseGetUserUseCase,
    @required this.firestoreCreateBarterItemUseCase,
    @required this.firestoreUpdateBarterItemUseCase,
  });

  @override
  PostState get initialState => PostState.empty();

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    yield* event.map(titleChanged: (e) async* {
      yield state.copyWith(
        isTitleValid:
            validators.isValidTextLengthMoreThanOrEqualToFourChars(e.title),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
      );
    }, descriptionChanged: (e) async* {
      yield state.copyWith(
        isDescriptionValid: validators
            .isValidTextLengthMoreThanOrEqualToFourChars(e.description),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
      );
    }, preferredItemChanged: (e) async* {
      yield state.copyWith(
        isPreferredItemValid: validators
            .isValidTextLengthMoreThanOrEqualToFourChars(e.preferredItem),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
      );
    }, locationChanged: (e) async* {
      yield state.copyWith(
        isLocationValid:
            validators.isValidTextLengthMoreThanOrEqualToFourChars(e.location),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
      );
    }, postButtonPressed: (e) async* {
      try {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        Map<String, PickedFile> pickedFileList = state.pickedFileList;

        yield PostState.loading(pickedFileList);

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
          userId: firebaseUser.uid,
          active: true,
          category: e.category,
          dateCreated: DateTime.now(),
          dateUpdated: DateTime.now(),
          dateDoneDeal: null,
          description: e.description,
          itemId: itemId,
          geoHash: e.geoHash,
          geoLocation: e.geoLocation,
          address: e.address,
          photosUrl: _photosUrl,
          preferredItem: e.preferredItem,
          publicAccess: true,
          title: e.title,
        );

        ///create a barter item in the barter market
        await firestoreCreateBarterItemUseCase.call(
          UseCaseBarterModelParam.init(
            barterModel: barterModel,
          ),
        );

        yield PostState.success(
          info: 'Successfully posted the item.',
          barterModel: barterModel,
          pickedFileList: pickedFileList,
        );
      } on PlatformException catch (platFormException) {
        yield PostState.failure(info: platFormException.message);
      }
    }, addPhotoToList: (e) async* {
      state.pickedFileList.putIfAbsent(e.pickedFile.path, () => e.pickedFile);
    }, removePhotoFromList: (e) async* {
      state.pickedFileList.remove(e.path);
    }, clearPhotoList: (e) async* {
      state.pickedFileList.clear();
    });
  }
}
