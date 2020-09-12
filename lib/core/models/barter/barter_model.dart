import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../algolia/algolia_geo_location.dart';

part 'barter_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BarterModel {
  @JsonKey(
    name: '_geoloc', //algolia naming for geopoint
  )
  AlgoliaGeolocation algoliaGeolocation;
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
  )
  GeoPoint geoPoint;
  int likes;
  List<String> photosUrl;
  String preferredItem;
  String title;
  String userId;
  String userFullName;
  String userPhotoUrl;

  BarterModel({
    @required this.algoliaGeolocation,
    @required this.active,
    @required this.address,
    @required this.publicAccess,
    @required this.category,
    @required this.dateCreated,
    this.dateDoneDeal,
    @required this.dateUpdated,
    @required this.description,
    @required this.itemId,
    @required this.geoHash,
    @required this.geoPoint,
    @required this.likes,
    @required this.photosUrl,
    @required this.preferredItem,
    @required this.title,
    @required this.userId,
    @required this.userFullName,
    @required this.userPhotoUrl,
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
