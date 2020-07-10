import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'algolia_geo_location.g.dart';

@JsonSerializable()
class AlgoliaGeolocation {
  double lat;
  double lng;

  AlgoliaGeolocation({
    @required this.lat,
    @required this.lng,
  });

  factory AlgoliaGeolocation.fromJson(Map<String, dynamic> json) =>
      _$AlgoliaGeolocationFromJson(json);
  Map<String, dynamic> toJson() => _$AlgoliaGeolocationToJson(this);
}
