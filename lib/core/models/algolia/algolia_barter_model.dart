import 'dart:core';

import 'package:Toutly/core/models/algolia/algolia_geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'algolia_barter_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AlgoliaBarterModel {
  @JsonKey(
    name: '_geoloc', //algolia naming for geopoint
  )
  AlgoliaGeolocation algoliaGeolocation;
  bool active;
  String address;
  bool publicAccess;
  String category;
  String description;
  String itemId;
  String geoHash;
  int likes;
  List<String> photosUrl;
  String preferredItem;
  String title;
  String userId;
  String userFullName;
  String userPhotoUrl;

  AlgoliaBarterModel({
    @required this.algoliaGeolocation,
    @required this.active,
    @required this.address,
    @required this.publicAccess,
    @required this.category,
    @required this.description,
    @required this.itemId,
    @required this.geoHash,
    @required this.likes,
    @required this.photosUrl,
    @required this.preferredItem,
    @required this.title,
    @required this.userId,
    @required this.userFullName,
    @required this.userPhotoUrl,
  });

  factory AlgoliaBarterModel.fromJson(Map<String, dynamic> json) =>
      _$AlgoliaBarterModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlgoliaBarterModelToJson(this);
}
