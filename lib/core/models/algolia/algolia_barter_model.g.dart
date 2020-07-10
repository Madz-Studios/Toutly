// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'algolia_barter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlgoliaBarterModel _$AlgoliaBarterModelFromJson(Map<String, dynamic> json) {
  return AlgoliaBarterModel(
    algoliaGeolocation: json['_geoloc'] == null
        ? null
        : AlgoliaGeolocation.fromJson(json['_geoloc'] as Map<String, dynamic>),
    active: json['active'] as bool,
    address: json['address'] as String,
    publicAccess: json['publicAccess'] as bool,
    category: json['category'] as String,
    description: json['description'] as String,
    itemId: json['itemId'] as String,
    geoHash: json['geoHash'] as String,
    likes: json['likes'] as int,
    photosUrl: (json['photosUrl'] as List)?.map((e) => e as String)?.toList(),
    preferredItem: json['preferredItem'] as String,
    title: json['title'] as String,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$AlgoliaBarterModelToJson(AlgoliaBarterModel instance) =>
    <String, dynamic>{
      '_geoloc': instance.algoliaGeolocation?.toJson(),
      'active': instance.active,
      'address': instance.address,
      'publicAccess': instance.publicAccess,
      'category': instance.category,
      'description': instance.description,
      'itemId': instance.itemId,
      'geoHash': instance.geoHash,
      'likes': instance.likes,
      'photosUrl': instance.photosUrl,
      'preferredItem': instance.preferredItem,
      'title': instance.title,
      'userId': instance.userId,
    };
