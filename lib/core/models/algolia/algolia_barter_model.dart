import 'dart:core';

import 'package:Toutly/core/models/algolia/algolia_geo_location.dart';
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

  AlgoliaBarterModel({
    this.algoliaGeolocation,
    this.active,
    this.address,
    this.publicAccess,
    this.category,
    this.description,
    this.itemId,
    this.geoHash,
    this.likes,
    this.photosUrl,
    this.preferredItem,
    this.title,
    this.userId,
  });

  factory AlgoliaBarterModel.fromJson(Map<String, dynamic> json) =>
      _$AlgoliaBarterModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlgoliaBarterModelToJson(this);
}
