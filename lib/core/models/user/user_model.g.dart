// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    dateCreated: UserModel._fromJsonTimestamp(json['dateCreated'] as Timestamp),
    dateUpdated: UserModel._fromJsonTimestamp(json['dateUpdated'] as Timestamp),
    email: json['email'] as String,
    geoHash: json['geoHash'] as String,
    geoLocation: UserModel._fromJsonGeoPoint(json['geoLocation'] as GeoPoint),
    name: json['name'] as String,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'dateCreated': UserModel._toJsonTimestamp(instance.dateCreated),
      'dateUpdated': UserModel._toJsonTimestamp(instance.dateUpdated),
      'email': instance.email,
      'geoHash': instance.geoHash,
      'geoLocation': UserModel._toJsonGeoPoint(instance.geoLocation),
      'userId': instance.userId,
    };
