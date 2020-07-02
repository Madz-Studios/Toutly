// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    userId: json['userId'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    dateCreated: json['dateCreated'] == null
        ? null
        : DateTime.parse(json['dateCreated'] as String),
    dateUpdated: json['dateUpdated'] == null
        ? null
        : DateTime.parse(json['dateUpdated'] as String),
    userBarterItems: (json['userBarterItems'] as List)
        ?.map((e) =>
            e == null ? null : BarterModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: UserModel._fromJsonGeoPoint(json['location'] as GeoPoint),
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateUpdated': instance.dateUpdated?.toIso8601String(),
      'email': instance.email,
      'location': UserModel._toJsonGeoPoint(instance.location),
      'userBarterItems': instance.userBarterItems,
      'userId': instance.userId,
    };
