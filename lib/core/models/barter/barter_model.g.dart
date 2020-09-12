// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarterModel _$BarterModelFromJson(Map<String, dynamic> json) {
  return BarterModel(
    algoliaGeolocation: json['_geoloc'] == null
        ? null
        : AlgoliaGeolocation.fromJson(json['_geoloc'] as Map<String, dynamic>),
    active: json['active'] as bool,
    address: json['address'] as String,
    publicAccess: json['publicAccess'] as bool,
    category: json['category'] as String,
    dateCreated:
        BarterModel._fromJsonTimestamp(json['dateCreated'] as Timestamp),
    dateDoneDeal:
        BarterModel._fromJsonTimestamp(json['dateDoneDeal'] as Timestamp),
    dateUpdated:
        BarterModel._fromJsonTimestamp(json['dateUpdated'] as Timestamp),
    description: json['description'] as String,
    itemId: json['itemId'] as String,
    geoHash: json['geoHash'] as String,
    geoPoint: BarterModel._fromJsonGeoPoint(json['geoPoint'] as GeoPoint),
    likes: json['likes'] as int,
    photosUrl: (json['photosUrl'] as List)?.map((e) => e as String)?.toList(),
    preferredItem: json['preferredItem'] as String,
    title: json['title'] as String,
    userId: json['userId'] as String,
    userFullName: json['userFullName'] as String,
    userPhotoUrl: json['userPhotoUrl'] as String,
  );
}

Map<String, dynamic> _$BarterModelToJson(BarterModel instance) =>
    <String, dynamic>{
      '_geoloc': instance.algoliaGeolocation?.toJson(),
      'active': instance.active,
      'address': instance.address,
      'publicAccess': instance.publicAccess,
      'category': instance.category,
      'dateCreated': BarterModel._toJsonTimestamp(instance.dateCreated),
      'dateDoneDeal': BarterModel._toJsonTimestamp(instance.dateDoneDeal),
      'dateUpdated': BarterModel._toJsonTimestamp(instance.dateUpdated),
      'description': instance.description,
      'itemId': instance.itemId,
      'geoHash': instance.geoHash,
      'geoPoint': BarterModel._toJsonGeoPoint(instance.geoPoint),
      'likes': instance.likes,
      'photosUrl': instance.photosUrl,
      'preferredItem': instance.preferredItem,
      'title': instance.title,
      'userId': instance.userId,
      'userFullName': instance.userFullName,
      'userPhotoUrl': instance.userPhotoUrl,
    };
