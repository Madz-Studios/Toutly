part of 'post_barter_cubit.dart';

@freezed
abstract class PostBarterState implements _$PostBarterState {
  const PostBarterState._();
  const factory PostBarterState({
    @required BarterModel barterModel,
    @required Map<String, PickedFile> pickedFileList,
    @required bool isTitleValid,
    @required bool isDescriptionValid,
    @required bool isPreferredItemValid,
    @required bool isLocationValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _PostBarterState;

  factory PostBarterState.empty() => PostBarterState(
        barterModel: BarterModel(
          itemId: '',
          userId: '',
          title: '',
          dateCreated: DateTime.now(),
          address: '',
          dateUpdated: DateTime.now(),
          category: '',
          description: '',
          geoHash: '',
          preferredItem: '',
          active: false,
          algoliaGeolocation: AlgoliaGeolocation(lng: 0, lat: 0),
          geoPoint: GeoPoint(0, 0),
          geoFirePointData: GeoFirePointData(
            geohash: '',
            geopoint: GeoPoint(0, 0),
          ),
          likes: 0,
          photosUrl: [],
          publicAccess: false,
          userFullName: '',
          userPhotoUrl: '',
          dateDoneDeal: DateTime.now(),
        ),
        pickedFileList: Map<String, PickedFile>(),
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PostBarterState.loading(Map<String, PickedFile> pickedFiles) =>
      PostBarterState(
        barterModel: BarterModel(
          itemId: '',
          userId: '',
          title: '',
          dateCreated: DateTime.now(),
          address: '',
          dateUpdated: DateTime.now(),
          category: '',
          description: '',
          geoHash: '',
          preferredItem: '',
          active: false,
          algoliaGeolocation: AlgoliaGeolocation(lng: 0, lat: 0),
          geoPoint: GeoPoint(0, 0),
          geoFirePointData: GeoFirePointData(
            geohash: '',
            geopoint: GeoPoint(0, 0),
          ),
          likes: 0,
          photosUrl: [],
          publicAccess: false,
          userFullName: '',
          userPhotoUrl: '',
          dateDoneDeal: DateTime.now(),
        ),
        pickedFileList: pickedFiles,
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PostBarterState.failure({@required String info}) => PostBarterState(
        barterModel: BarterModel(
          itemId: '',
          userId: '',
          title: '',
          dateCreated: DateTime.now(),
          address: '',
          dateUpdated: DateTime.now(),
          category: '',
          description: '',
          geoHash: '',
          preferredItem: '',
          active: false,
          algoliaGeolocation: AlgoliaGeolocation(lng: 0, lat: 0),
          geoPoint: GeoPoint(0, 0),
          geoFirePointData: GeoFirePointData(
            geohash: '',
            geopoint: GeoPoint(0, 0),
          ),
          likes: 0,
          photosUrl: [],
          publicAccess: false,
          userFullName: '',
          userPhotoUrl: '',
          dateDoneDeal: DateTime.now(),
        ),
        pickedFileList: Map<String, PickedFile>(),
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory PostBarterState.success({
    @required String info,
    @required BarterModel barterModel,
    @required Map<String, PickedFile> pickedFileList,
  }) =>
      PostBarterState(
        barterModel: barterModel,
        pickedFileList: pickedFileList,
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  bool get isPostFormValid =>
      isTitleValid &&
      isDescriptionValid &&
      isPreferredItemValid &&
      isLocationValid &&
      pickedFileList.isNotEmpty;

  Map<String, PickedFile> get pickedFileList;
}
