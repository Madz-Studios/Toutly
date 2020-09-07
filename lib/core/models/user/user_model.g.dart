// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    address: json['address'] as String,
    barterLikesList:
        (json['barterLikesList'] as List)?.map((e) => e as String)?.toList(),
    dateCreated: UserModel._fromJsonTimestamp(json['dateCreated'] as Timestamp),
    dateUpdated: UserModel._fromJsonTimestamp(json['dateUpdated'] as Timestamp),
    email: json['email'] as String,
    fcmToken: (json['fcmToken'] as List)?.map((e) => e as String)?.toList(),
    geoHash: json['geoHash'] as String,
    geoLocation: UserModel._fromJsonGeoPoint(json['geoLocation'] as GeoPoint),
    name: json['name'] as String,
    photoUrl: json['photoUrl'] as String,
    userId: json['userId'] as String,
    userRating: (json['userRating'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'address': instance.address,
      'barterLikesList': instance.barterLikesList,
      'email': instance.email,
      'dateCreated': UserModel._toJsonTimestamp(instance.dateCreated),
      'dateUpdated': UserModel._toJsonTimestamp(instance.dateUpdated),
      'fcmToken': instance.fcmToken,
      'geoHash': instance.geoHash,
      'geoLocation': UserModel._toJsonGeoPoint(instance.geoLocation),
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'userId': instance.userId,
      'userRating': instance.userRating,
    };
