import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String name;
  DateTime dateCreated;
  DateTime dateUpdated;
  String email;
  @JsonKey(fromJson: _fromJsonGeoPoint, toJson: _toJsonGeoPoint)
  GeoPoint location;
  List<BarterModel> userBarterItems;
  String userId;
  UserModel({
    this.userId,
    this.email,
    this.name,
    this.dateCreated,
    this.dateUpdated,
    this.userBarterItems,
    this.location,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  static GeoPoint _fromJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }

  static GeoPoint _toJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }
}
