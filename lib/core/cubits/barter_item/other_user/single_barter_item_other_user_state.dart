part of 'single_barter_item_other_user_cubit.dart';

@freezed
abstract class SingleBarterItemOtherUserState
    with _$SingleBarterItemOtherUserState {
  const factory SingleBarterItemOtherUserState({
    @required BarterModel otherUserBarterItem,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _SingleBarterItemOtherUserState;

  factory SingleBarterItemOtherUserState.empty() =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: BarterModel(
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
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SingleBarterItemOtherUserState.loading() =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: BarterModel(
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
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SingleBarterItemOtherUserState.failure({@required String info}) =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: BarterModel(
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
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SingleBarterItemOtherUserState.success(
          {@required BarterModel otherUserBarterModel,
          @required String info}) =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: otherUserBarterModel,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
