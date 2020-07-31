part of 'post_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.titleChanged({@required String title}) =
      PostEventTitleChanged;

  const factory PostEvent.descriptionChanged({@required String description}) =
      PostEventDescriptionChanged;

  const factory PostEvent.preferredItemChanged(
      {@required String preferredItem}) = PostEventPreferredItemChanged;

  const factory PostEvent.locationChanged({@required String location}) =
      PostEventLocationChanged;

  const factory PostEvent.addPhotoToList(
      {@required String path,
      @required PickedFile pickedFile}) = PostEventAddPhotoToList;

  const factory PostEvent.removePhotoFromList(
      {@required String path,
      @required PickedFile pickedFile}) = PostEventRemovePhotoFromList;

  const factory PostEvent.clearPhotoList() = PostEventClearPhotoList;

  const factory PostEvent.postButtonPressed({
    @required String category,
    @required String title,
    @required String description,
    @required String preferredItem,
    @required String address,
    @required GeoPoint geoLocation,
    @required String geoHash,
    @required String privacy,
  }) = PostEventPostButtonPressed;
}
