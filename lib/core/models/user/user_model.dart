import 'package:Toutly/core/models/geo_firepoint_data/geo_fire_point_data.dart';
import 'package:Toutly/core/models/user/saved_items/saved_item_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  String address;
  List<SavedItemModel> saveItems;
  String email;
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateUpdated;
  List<String> fcmToken;
  String geoHash;
  @JsonKey(fromJson: _fromJsonGeoPoint, toJson: _toJsonGeoPoint)
  GeoPoint geoLocation;
  GeoFirePointData geoFirePointData;
  String name;
  String photoUrl;
  String userId;
  double userRating;
  UserModel({
    this.address,
    this.saveItems,
    this.dateCreated,
    this.dateUpdated,
    this.email,
    this.fcmToken,
    this.geoHash,
    this.geoLocation,
    this.geoFirePointData,
    this.name,
    this.photoUrl,
    this.userId,
    this.userRating,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  static DateTime _fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  static Timestamp _toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);

  static GeoPoint _fromJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }

  static GeoPoint _toJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }
}
