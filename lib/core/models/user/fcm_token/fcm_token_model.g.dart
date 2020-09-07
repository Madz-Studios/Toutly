// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FcmTokenModel _$FcmTokenModelFromJson(Map<String, dynamic> json) {
  return FcmTokenModel(
    dateCreated:
        FcmTokenModel._fromJsonTimestamp(json['dateCreated'] as Timestamp),
    platform: json['platform'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$FcmTokenModelToJson(FcmTokenModel instance) =>
    <String, dynamic>{
      'dateCreated': FcmTokenModel._toJsonTimestamp(instance.dateCreated),
      'platform': instance.platform,
      'token': instance.token,
    };
