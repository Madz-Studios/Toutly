import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_fire_point_data.g.dart';

@JsonSerializable(explicitToJson: true)
class GeoFirePointData {
  @JsonKey(fromJson: _fromJsonGeoPoint, toJson: _toJsonGeoPoint)
  GeoPoint geopoint;
  String geohash;
  GeoFirePointData({
    this.geopoint,
    this.geohash,
  });

  factory GeoFirePointData.fromJson(Map<String, dynamic> json) =>
      _$GeoFirePointDataFromJson(json);

  Map<String, dynamic> toJson() => _$GeoFirePointDataToJson(this);

  static GeoPoint _fromJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }

  static GeoPoint _toJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }
}
