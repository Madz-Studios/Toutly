import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'barter_model.g.dart';

@JsonSerializable()
class BarterModel {
  bool active;
  String address;
  bool publicAccess;
  String category;
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateDoneDeal;
  @JsonKey(
      fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp, nullable: true)
  DateTime dateUpdated;
  String description;
  String itemId;
  String geoHash;
  @JsonKey(
      fromJson: _fromJsonGeoPoint,
      toJson: _toJsonGeoPoint,
      name:
          '_geoloc') //name  '_geoloc' is for geo location searching of algolia
  GeoPoint geoLocation;
  int likes;
  List<String> photosUrl;
  String preferredItem;
  String title;
  String userId;

  BarterModel({
    this.active,
    this.address,
    this.publicAccess,
    this.category,
    this.dateCreated,
    this.dateDoneDeal,
    this.dateUpdated,
    this.description,
    this.itemId,
    this.geoHash,
    this.geoLocation,
    this.likes,
    this.photosUrl,
    this.preferredItem,
    this.title,
    this.userId,
  });

  factory BarterModel.fromJson(Map<String, dynamic> json) =>
      _$BarterModelFromJson(json);
  Map<String, dynamic> toJson() => _$BarterModelToJson(this);

  static DateTime _fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  static Timestamp _toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);

  static GeoPoint _fromJsonGeoPoint(GeoPoint _geoPoint) {
    return _geoPoint;
  }

  static GeoPoint _toJsonGeoPoint(GeoPoint _geoPoint) {
    return _geoPoint;
  }
}
