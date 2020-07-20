// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barter_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarterMessageModel _$BarterMessageModelFromJson(Map<String, dynamic> json) {
  return BarterMessageModel(
    barterTransactionId: json['barterTransactionId'] as String,
    userId: json['userId'] as String,
    message: json['message'] as String,
    dateCreated:
        BarterMessageModel._fromJsonTimestamp(json['dateCreated'] as Timestamp),
  );
}

Map<String, dynamic> _$BarterMessageModelToJson(BarterMessageModel instance) =>
    <String, dynamic>{
      'barterTransactionId': instance.barterTransactionId,
      'userId': instance.userId,
      'message': instance.message,
      'dateCreated': BarterMessageModel._toJsonTimestamp(instance.dateCreated),
    };
