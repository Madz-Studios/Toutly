// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostEventTearOff {
  const _$PostEventTearOff();

  PostEventTitleChanged titleChanged({@required String title}) {
    return PostEventTitleChanged(
      title: title,
    );
  }

  PostEventDescriptionChanged descriptionChanged(
      {@required String description}) {
    return PostEventDescriptionChanged(
      description: description,
    );
  }

  PostEventPreferredItemChanged preferredItemChanged(
      {@required String preferredItem}) {
    return PostEventPreferredItemChanged(
      preferredItem: preferredItem,
    );
  }

  PostEventLocationChanged locationChanged({@required String location}) {
    return PostEventLocationChanged(
      location: location,
    );
  }

  PostEventAddPhotoToList addPhotoToList(
      {@required String path, @required PickedFile pickedFile}) {
    return PostEventAddPhotoToList(
      path: path,
      pickedFile: pickedFile,
    );
  }

  PostEventRemovePhotoFromList removePhotoFromList(
      {@required String path, @required PickedFile pickedFile}) {
    return PostEventRemovePhotoFromList(
      path: path,
      pickedFile: pickedFile,
    );
  }

  PostEventPostButtonPressed postButtonPressed(
      {@required String category,
      @required String title,
      @required String description,
      @required String preferredItem,
      @required String address,
      @required GeoPoint geoLocation,
      @required String geoHash}) {
    return PostEventPostButtonPressed(
      category: category,
      title: title,
      description: description,
      preferredItem: preferredItem,
      address: address,
      geoLocation: geoLocation,
      geoHash: geoHash,
    );
  }
}

// ignore: unused_element
const $PostEvent = _$PostEventTearOff();

mixin _$PostEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
}

class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;
}

abstract class $PostEventTitleChangedCopyWith<$Res> {
  factory $PostEventTitleChangedCopyWith(PostEventTitleChanged value,
          $Res Function(PostEventTitleChanged) then) =
      _$PostEventTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class _$PostEventTitleChangedCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventTitleChangedCopyWith<$Res> {
  _$PostEventTitleChangedCopyWithImpl(
      PostEventTitleChanged _value, $Res Function(PostEventTitleChanged) _then)
      : super(_value, (v) => _then(v as PostEventTitleChanged));

  @override
  PostEventTitleChanged get _value => super._value as PostEventTitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(PostEventTitleChanged(
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

class _$PostEventTitleChanged implements PostEventTitleChanged {
  const _$PostEventTitleChanged({@required this.title}) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'PostEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventTitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  $PostEventTitleChangedCopyWith<PostEventTitleChanged> get copyWith =>
      _$PostEventTitleChangedCopyWithImpl<PostEventTitleChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class PostEventTitleChanged implements PostEvent {
  const factory PostEventTitleChanged({@required String title}) =
      _$PostEventTitleChanged;

  String get title;
  $PostEventTitleChangedCopyWith<PostEventTitleChanged> get copyWith;
}

abstract class $PostEventDescriptionChangedCopyWith<$Res> {
  factory $PostEventDescriptionChangedCopyWith(
          PostEventDescriptionChanged value,
          $Res Function(PostEventDescriptionChanged) then) =
      _$PostEventDescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

class _$PostEventDescriptionChangedCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventDescriptionChangedCopyWith<$Res> {
  _$PostEventDescriptionChangedCopyWithImpl(PostEventDescriptionChanged _value,
      $Res Function(PostEventDescriptionChanged) _then)
      : super(_value, (v) => _then(v as PostEventDescriptionChanged));

  @override
  PostEventDescriptionChanged get _value =>
      super._value as PostEventDescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(PostEventDescriptionChanged(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

class _$PostEventDescriptionChanged implements PostEventDescriptionChanged {
  const _$PostEventDescriptionChanged({@required this.description})
      : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'PostEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventDescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $PostEventDescriptionChangedCopyWith<PostEventDescriptionChanged>
      get copyWith => _$PostEventDescriptionChangedCopyWithImpl<
          PostEventDescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class PostEventDescriptionChanged implements PostEvent {
  const factory PostEventDescriptionChanged({@required String description}) =
      _$PostEventDescriptionChanged;

  String get description;
  $PostEventDescriptionChangedCopyWith<PostEventDescriptionChanged>
      get copyWith;
}

abstract class $PostEventPreferredItemChangedCopyWith<$Res> {
  factory $PostEventPreferredItemChangedCopyWith(
          PostEventPreferredItemChanged value,
          $Res Function(PostEventPreferredItemChanged) then) =
      _$PostEventPreferredItemChangedCopyWithImpl<$Res>;
  $Res call({String preferredItem});
}

class _$PostEventPreferredItemChangedCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventPreferredItemChangedCopyWith<$Res> {
  _$PostEventPreferredItemChangedCopyWithImpl(
      PostEventPreferredItemChanged _value,
      $Res Function(PostEventPreferredItemChanged) _then)
      : super(_value, (v) => _then(v as PostEventPreferredItemChanged));

  @override
  PostEventPreferredItemChanged get _value =>
      super._value as PostEventPreferredItemChanged;

  @override
  $Res call({
    Object preferredItem = freezed,
  }) {
    return _then(PostEventPreferredItemChanged(
      preferredItem: preferredItem == freezed
          ? _value.preferredItem
          : preferredItem as String,
    ));
  }
}

class _$PostEventPreferredItemChanged implements PostEventPreferredItemChanged {
  const _$PostEventPreferredItemChanged({@required this.preferredItem})
      : assert(preferredItem != null);

  @override
  final String preferredItem;

  @override
  String toString() {
    return 'PostEvent.preferredItemChanged(preferredItem: $preferredItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventPreferredItemChanged &&
            (identical(other.preferredItem, preferredItem) ||
                const DeepCollectionEquality()
                    .equals(other.preferredItem, preferredItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(preferredItem);

  @override
  $PostEventPreferredItemChangedCopyWith<PostEventPreferredItemChanged>
      get copyWith => _$PostEventPreferredItemChangedCopyWithImpl<
          PostEventPreferredItemChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return preferredItemChanged(preferredItem);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preferredItemChanged != null) {
      return preferredItemChanged(preferredItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return preferredItemChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preferredItemChanged != null) {
      return preferredItemChanged(this);
    }
    return orElse();
  }
}

abstract class PostEventPreferredItemChanged implements PostEvent {
  const factory PostEventPreferredItemChanged(
      {@required String preferredItem}) = _$PostEventPreferredItemChanged;

  String get preferredItem;
  $PostEventPreferredItemChangedCopyWith<PostEventPreferredItemChanged>
      get copyWith;
}

abstract class $PostEventLocationChangedCopyWith<$Res> {
  factory $PostEventLocationChangedCopyWith(PostEventLocationChanged value,
          $Res Function(PostEventLocationChanged) then) =
      _$PostEventLocationChangedCopyWithImpl<$Res>;
  $Res call({String location});
}

class _$PostEventLocationChangedCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventLocationChangedCopyWith<$Res> {
  _$PostEventLocationChangedCopyWithImpl(PostEventLocationChanged _value,
      $Res Function(PostEventLocationChanged) _then)
      : super(_value, (v) => _then(v as PostEventLocationChanged));

  @override
  PostEventLocationChanged get _value =>
      super._value as PostEventLocationChanged;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(PostEventLocationChanged(
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

class _$PostEventLocationChanged implements PostEventLocationChanged {
  const _$PostEventLocationChanged({@required this.location})
      : assert(location != null);

  @override
  final String location;

  @override
  String toString() {
    return 'PostEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventLocationChanged &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $PostEventLocationChangedCopyWith<PostEventLocationChanged> get copyWith =>
      _$PostEventLocationChangedCopyWithImpl<PostEventLocationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class PostEventLocationChanged implements PostEvent {
  const factory PostEventLocationChanged({@required String location}) =
      _$PostEventLocationChanged;

  String get location;
  $PostEventLocationChangedCopyWith<PostEventLocationChanged> get copyWith;
}

abstract class $PostEventAddPhotoToListCopyWith<$Res> {
  factory $PostEventAddPhotoToListCopyWith(PostEventAddPhotoToList value,
          $Res Function(PostEventAddPhotoToList) then) =
      _$PostEventAddPhotoToListCopyWithImpl<$Res>;
  $Res call({String path, PickedFile pickedFile});
}

class _$PostEventAddPhotoToListCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventAddPhotoToListCopyWith<$Res> {
  _$PostEventAddPhotoToListCopyWithImpl(PostEventAddPhotoToList _value,
      $Res Function(PostEventAddPhotoToList) _then)
      : super(_value, (v) => _then(v as PostEventAddPhotoToList));

  @override
  PostEventAddPhotoToList get _value => super._value as PostEventAddPhotoToList;

  @override
  $Res call({
    Object path = freezed,
    Object pickedFile = freezed,
  }) {
    return _then(PostEventAddPhotoToList(
      path: path == freezed ? _value.path : path as String,
      pickedFile:
          pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
    ));
  }
}

class _$PostEventAddPhotoToList implements PostEventAddPhotoToList {
  const _$PostEventAddPhotoToList(
      {@required this.path, @required this.pickedFile})
      : assert(path != null),
        assert(pickedFile != null);

  @override
  final String path;
  @override
  final PickedFile pickedFile;

  @override
  String toString() {
    return 'PostEvent.addPhotoToList(path: $path, pickedFile: $pickedFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventAddPhotoToList &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.pickedFile, pickedFile) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFile, pickedFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(pickedFile);

  @override
  $PostEventAddPhotoToListCopyWith<PostEventAddPhotoToList> get copyWith =>
      _$PostEventAddPhotoToListCopyWithImpl<PostEventAddPhotoToList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return addPhotoToList(path, pickedFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addPhotoToList != null) {
      return addPhotoToList(path, pickedFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return addPhotoToList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addPhotoToList != null) {
      return addPhotoToList(this);
    }
    return orElse();
  }
}

abstract class PostEventAddPhotoToList implements PostEvent {
  const factory PostEventAddPhotoToList(
      {@required String path,
      @required PickedFile pickedFile}) = _$PostEventAddPhotoToList;

  String get path;
  PickedFile get pickedFile;
  $PostEventAddPhotoToListCopyWith<PostEventAddPhotoToList> get copyWith;
}

abstract class $PostEventRemovePhotoFromListCopyWith<$Res> {
  factory $PostEventRemovePhotoFromListCopyWith(
          PostEventRemovePhotoFromList value,
          $Res Function(PostEventRemovePhotoFromList) then) =
      _$PostEventRemovePhotoFromListCopyWithImpl<$Res>;
  $Res call({String path, PickedFile pickedFile});
}

class _$PostEventRemovePhotoFromListCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventRemovePhotoFromListCopyWith<$Res> {
  _$PostEventRemovePhotoFromListCopyWithImpl(
      PostEventRemovePhotoFromList _value,
      $Res Function(PostEventRemovePhotoFromList) _then)
      : super(_value, (v) => _then(v as PostEventRemovePhotoFromList));

  @override
  PostEventRemovePhotoFromList get _value =>
      super._value as PostEventRemovePhotoFromList;

  @override
  $Res call({
    Object path = freezed,
    Object pickedFile = freezed,
  }) {
    return _then(PostEventRemovePhotoFromList(
      path: path == freezed ? _value.path : path as String,
      pickedFile:
          pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
    ));
  }
}

class _$PostEventRemovePhotoFromList implements PostEventRemovePhotoFromList {
  const _$PostEventRemovePhotoFromList(
      {@required this.path, @required this.pickedFile})
      : assert(path != null),
        assert(pickedFile != null);

  @override
  final String path;
  @override
  final PickedFile pickedFile;

  @override
  String toString() {
    return 'PostEvent.removePhotoFromList(path: $path, pickedFile: $pickedFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventRemovePhotoFromList &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.pickedFile, pickedFile) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFile, pickedFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(pickedFile);

  @override
  $PostEventRemovePhotoFromListCopyWith<PostEventRemovePhotoFromList>
      get copyWith => _$PostEventRemovePhotoFromListCopyWithImpl<
          PostEventRemovePhotoFromList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return removePhotoFromList(path, pickedFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removePhotoFromList != null) {
      return removePhotoFromList(path, pickedFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return removePhotoFromList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removePhotoFromList != null) {
      return removePhotoFromList(this);
    }
    return orElse();
  }
}

abstract class PostEventRemovePhotoFromList implements PostEvent {
  const factory PostEventRemovePhotoFromList(
      {@required String path,
      @required PickedFile pickedFile}) = _$PostEventRemovePhotoFromList;

  String get path;
  PickedFile get pickedFile;
  $PostEventRemovePhotoFromListCopyWith<PostEventRemovePhotoFromList>
      get copyWith;
}

abstract class $PostEventPostButtonPressedCopyWith<$Res> {
  factory $PostEventPostButtonPressedCopyWith(PostEventPostButtonPressed value,
          $Res Function(PostEventPostButtonPressed) then) =
      _$PostEventPostButtonPressedCopyWithImpl<$Res>;
  $Res call(
      {String category,
      String title,
      String description,
      String preferredItem,
      String address,
      GeoPoint geoLocation,
      String geoHash});
}

class _$PostEventPostButtonPressedCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements $PostEventPostButtonPressedCopyWith<$Res> {
  _$PostEventPostButtonPressedCopyWithImpl(PostEventPostButtonPressed _value,
      $Res Function(PostEventPostButtonPressed) _then)
      : super(_value, (v) => _then(v as PostEventPostButtonPressed));

  @override
  PostEventPostButtonPressed get _value =>
      super._value as PostEventPostButtonPressed;

  @override
  $Res call({
    Object category = freezed,
    Object title = freezed,
    Object description = freezed,
    Object preferredItem = freezed,
    Object address = freezed,
    Object geoLocation = freezed,
    Object geoHash = freezed,
  }) {
    return _then(PostEventPostButtonPressed(
      category: category == freezed ? _value.category : category as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      preferredItem: preferredItem == freezed
          ? _value.preferredItem
          : preferredItem as String,
      address: address == freezed ? _value.address : address as String,
      geoLocation:
          geoLocation == freezed ? _value.geoLocation : geoLocation as GeoPoint,
      geoHash: geoHash == freezed ? _value.geoHash : geoHash as String,
    ));
  }
}

class _$PostEventPostButtonPressed implements PostEventPostButtonPressed {
  const _$PostEventPostButtonPressed(
      {@required this.category,
      @required this.title,
      @required this.description,
      @required this.preferredItem,
      @required this.address,
      @required this.geoLocation,
      @required this.geoHash})
      : assert(category != null),
        assert(title != null),
        assert(description != null),
        assert(preferredItem != null),
        assert(address != null),
        assert(geoLocation != null),
        assert(geoHash != null);

  @override
  final String category;
  @override
  final String title;
  @override
  final String description;
  @override
  final String preferredItem;
  @override
  final String address;
  @override
  final GeoPoint geoLocation;
  @override
  final String geoHash;

  @override
  String toString() {
    return 'PostEvent.postButtonPressed(category: $category, title: $title, description: $description, preferredItem: $preferredItem, address: $address, geoLocation: $geoLocation, geoHash: $geoHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostEventPostButtonPressed &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.preferredItem, preferredItem) ||
                const DeepCollectionEquality()
                    .equals(other.preferredItem, preferredItem)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.geoLocation, geoLocation) ||
                const DeepCollectionEquality()
                    .equals(other.geoLocation, geoLocation)) &&
            (identical(other.geoHash, geoHash) ||
                const DeepCollectionEquality().equals(other.geoHash, geoHash)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(preferredItem) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(geoLocation) ^
      const DeepCollectionEquality().hash(geoHash);

  @override
  $PostEventPostButtonPressedCopyWith<PostEventPostButtonPressed>
      get copyWith =>
          _$PostEventPostButtonPressedCopyWithImpl<PostEventPostButtonPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result preferredItemChanged(String preferredItem),
    @required Result locationChanged(String location),
    @required Result addPhotoToList(String path, PickedFile pickedFile),
    @required Result removePhotoFromList(String path, PickedFile pickedFile),
    @required
        Result postButtonPressed(
            String category,
            String title,
            String description,
            String preferredItem,
            String address,
            GeoPoint geoLocation,
            String geoHash),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return postButtonPressed(category, title, description, preferredItem,
        address, geoLocation, geoHash);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result preferredItemChanged(String preferredItem),
    Result locationChanged(String location),
    Result addPhotoToList(String path, PickedFile pickedFile),
    Result removePhotoFromList(String path, PickedFile pickedFile),
    Result postButtonPressed(
        String category,
        String title,
        String description,
        String preferredItem,
        String address,
        GeoPoint geoLocation,
        String geoHash),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postButtonPressed != null) {
      return postButtonPressed(category, title, description, preferredItem,
          address, geoLocation, geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(PostEventTitleChanged value),
    @required Result descriptionChanged(PostEventDescriptionChanged value),
    @required Result preferredItemChanged(PostEventPreferredItemChanged value),
    @required Result locationChanged(PostEventLocationChanged value),
    @required Result addPhotoToList(PostEventAddPhotoToList value),
    @required Result removePhotoFromList(PostEventRemovePhotoFromList value),
    @required Result postButtonPressed(PostEventPostButtonPressed value),
  }) {
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(preferredItemChanged != null);
    assert(locationChanged != null);
    assert(addPhotoToList != null);
    assert(removePhotoFromList != null);
    assert(postButtonPressed != null);
    return postButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(PostEventTitleChanged value),
    Result descriptionChanged(PostEventDescriptionChanged value),
    Result preferredItemChanged(PostEventPreferredItemChanged value),
    Result locationChanged(PostEventLocationChanged value),
    Result addPhotoToList(PostEventAddPhotoToList value),
    Result removePhotoFromList(PostEventRemovePhotoFromList value),
    Result postButtonPressed(PostEventPostButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postButtonPressed != null) {
      return postButtonPressed(this);
    }
    return orElse();
  }
}

abstract class PostEventPostButtonPressed implements PostEvent {
  const factory PostEventPostButtonPressed(
      {@required String category,
      @required String title,
      @required String description,
      @required String preferredItem,
      @required String address,
      @required GeoPoint geoLocation,
      @required String geoHash}) = _$PostEventPostButtonPressed;

  String get category;
  String get title;
  String get description;
  String get preferredItem;
  String get address;
  GeoPoint get geoLocation;
  String get geoHash;
  $PostEventPostButtonPressedCopyWith<PostEventPostButtonPressed> get copyWith;
}

class _$PostStateTearOff {
  const _$PostStateTearOff();

  _PostState call(
      {@required Map<String, PickedFile> pickedFileList,
      @required bool isTitleValid,
      @required bool isDescriptionValid,
      @required bool isPreferredItemValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _PostState(
      pickedFileList: pickedFileList,
      isTitleValid: isTitleValid,
      isDescriptionValid: isDescriptionValid,
      isPreferredItemValid: isPreferredItemValid,
      isLocationValid: isLocationValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $PostState = _$PostStateTearOff();

mixin _$PostState {
  Map<String, PickedFile> get pickedFileList;
  bool get isTitleValid;
  bool get isDescriptionValid;
  bool get isPreferredItemValid;
  bool get isLocationValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $PostStateCopyWith<PostState> get copyWith;
}

abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, PickedFile> pickedFileList,
      bool isTitleValid,
      bool isDescriptionValid,
      bool isPreferredItemValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object pickedFileList = freezed,
    Object isTitleValid = freezed,
    Object isDescriptionValid = freezed,
    Object isPreferredItemValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      pickedFileList: pickedFileList == freezed
          ? _value.pickedFileList
          : pickedFileList as Map<String, PickedFile>,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isDescriptionValid: isDescriptionValid == freezed
          ? _value.isDescriptionValid
          : isDescriptionValid as bool,
      isPreferredItemValid: isPreferredItemValid == freezed
          ? _value.isPreferredItemValid
          : isPreferredItemValid as bool,
      isLocationValid: isLocationValid == freezed
          ? _value.isLocationValid
          : isLocationValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(
          _PostState value, $Res Function(_PostState) then) =
      __$PostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, PickedFile> pickedFileList,
      bool isTitleValid,
      bool isDescriptionValid,
      bool isPreferredItemValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$PostStateCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(_PostState _value, $Res Function(_PostState) _then)
      : super(_value, (v) => _then(v as _PostState));

  @override
  _PostState get _value => super._value as _PostState;

  @override
  $Res call({
    Object pickedFileList = freezed,
    Object isTitleValid = freezed,
    Object isDescriptionValid = freezed,
    Object isPreferredItemValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_PostState(
      pickedFileList: pickedFileList == freezed
          ? _value.pickedFileList
          : pickedFileList as Map<String, PickedFile>,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isDescriptionValid: isDescriptionValid == freezed
          ? _value.isDescriptionValid
          : isDescriptionValid as bool,
      isPreferredItemValid: isPreferredItemValid == freezed
          ? _value.isPreferredItemValid
          : isPreferredItemValid as bool,
      isLocationValid: isLocationValid == freezed
          ? _value.isLocationValid
          : isLocationValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_PostState extends _PostState {
  const _$_PostState(
      {@required this.pickedFileList,
      @required this.isTitleValid,
      @required this.isDescriptionValid,
      @required this.isPreferredItemValid,
      @required this.isLocationValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(pickedFileList != null),
        assert(isTitleValid != null),
        assert(isDescriptionValid != null),
        assert(isPreferredItemValid != null),
        assert(isLocationValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final Map<String, PickedFile> pickedFileList;
  @override
  final bool isTitleValid;
  @override
  final bool isDescriptionValid;
  @override
  final bool isPreferredItemValid;
  @override
  final bool isLocationValid;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'PostState(pickedFileList: $pickedFileList, isTitleValid: $isTitleValid, isDescriptionValid: $isDescriptionValid, isPreferredItemValid: $isPreferredItemValid, isLocationValid: $isLocationValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostState &&
            (identical(other.pickedFileList, pickedFileList) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFileList, pickedFileList)) &&
            (identical(other.isTitleValid, isTitleValid) ||
                const DeepCollectionEquality()
                    .equals(other.isTitleValid, isTitleValid)) &&
            (identical(other.isDescriptionValid, isDescriptionValid) ||
                const DeepCollectionEquality()
                    .equals(other.isDescriptionValid, isDescriptionValid)) &&
            (identical(other.isPreferredItemValid, isPreferredItemValid) ||
                const DeepCollectionEquality().equals(
                    other.isPreferredItemValid, isPreferredItemValid)) &&
            (identical(other.isLocationValid, isLocationValid) ||
                const DeepCollectionEquality()
                    .equals(other.isLocationValid, isLocationValid)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pickedFileList) ^
      const DeepCollectionEquality().hash(isTitleValid) ^
      const DeepCollectionEquality().hash(isDescriptionValid) ^
      const DeepCollectionEquality().hash(isPreferredItemValid) ^
      const DeepCollectionEquality().hash(isLocationValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$PostStateCopyWith<_PostState> get copyWith =>
      __$PostStateCopyWithImpl<_PostState>(this, _$identity);
}

abstract class _PostState extends PostState {
  const _PostState._() : super._();
  const factory _PostState(
      {@required Map<String, PickedFile> pickedFileList,
      @required bool isTitleValid,
      @required bool isDescriptionValid,
      @required bool isPreferredItemValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_PostState;

  @override
  Map<String, PickedFile> get pickedFileList;
  @override
  bool get isTitleValid;
  @override
  bool get isDescriptionValid;
  @override
  bool get isPreferredItemValid;
  @override
  bool get isLocationValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$PostStateCopyWith<_PostState> get copyWith;
}
