// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'algolia_geo_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlgoliaGeolocation _$AlgoliaGeolocationFromJson(Map<String, dynamic> json) {
  return AlgoliaGeolocation(
    lat: (json['lat'] as num)?.toDouble(),
    lng: (json['lng'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$AlgoliaGeolocationToJson(AlgoliaGeolocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
