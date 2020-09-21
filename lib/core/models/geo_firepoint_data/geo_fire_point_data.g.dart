// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_fire_point_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoFirePointData _$GeoFirePointDataFromJson(Map<String, dynamic> json) {
  return GeoFirePointData(
    geopoint: GeoFirePointData._fromJsonGeoPoint(json['geopoint'] as GeoPoint),
    geohash: json['geohash'] as String,
  );
}

Map<String, dynamic> _$GeoFirePointDataToJson(GeoFirePointData instance) =>
    <String, dynamic>{
      'geopoint': GeoFirePointData._toJsonGeoPoint(instance.geopoint),
      'geohash': instance.geohash,
    };
