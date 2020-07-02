part of 'post_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.titleChanged({String title}) = PostEventTitleChanged;

  const factory PostEvent.descriptionChanged({String description}) =
      PostEventDescriptionChanged;

  const factory PostEvent.preferredItemChanged({String preferredItem}) =
      PostEventPreferredItemChanged;

  const factory PostEvent.locationChanged({String location}) =
      PostEventLocationChanged;

  const factory PostEvent.addPhotoToList({String path, PickedFile pickedFile}) =
      PostEventAddPhotoToList;

  const factory PostEvent.removePhotoFromList(
      {String path, PickedFile pickedFile}) = PostEventRemovePhotoFromList;

  const factory PostEvent.postButtonPressed(
    String category,
    String title,
    String description,
    String preferredItem,
    String location,
    GeoPoint geoPoint,
  ) = PostEventPostButtonPressed;
}
