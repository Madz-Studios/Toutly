// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    dateCreated: json['dateCreated'] == null
        ? null
        : DateTime.parse(json['dateCreated'] as String),
    dateUpdated: json['dateUpdated'] == null
        ? null
        : DateTime.parse(json['dateUpdated'] as String),
    email: json['email'] as String,
    geoHash: json['geoHash'] as String,
    geoLocation: UserModel._fromJsonGeoPoint(json['geoLocation'] as GeoPoint),
    name: json['name'] as String,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateUpdated': instance.dateUpdated?.toIso8601String(),
      'email': instance.email,
      'geoHash': instance.geoHash,
      'geoLocation': UserModel._toJsonGeoPoint(instance.geoLocation),
      'userId': instance.userId,
    };
