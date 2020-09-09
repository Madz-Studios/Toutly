// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barter_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarterMessageModel _$BarterMessageModelFromJson(Map<String, dynamic> json) {
  return BarterMessageModel(
    barterMessageId: json['barterMessageId'] as String,
    usersInvolved:
        (json['usersInvolved'] as List)?.map((e) => e as String)?.toList(),
    userOffer: json['userOffer'] as String,
    userBarter: json['userBarter'] as String,
    barterItemId: json['barterItemId'] as String,
    barterOfferItems:
        (json['barterOfferItems'] as List)?.map((e) => e as String)?.toList(),
    isReadLastMessage: json['isReadLastMessage'] as bool,
    userLastMessageSender: json['userLastMessageSender'] as String,
    dateCreated:
        BarterMessageModel._fromJsonTimestamp(json['dateCreated'] as Timestamp),
    dateUpdated:
        BarterMessageModel._fromJsonTimestamp(json['dateUpdated'] as Timestamp),
    lastMessageText: json['lastMessageText'] as String,
  );
}

Map<String, dynamic> _$BarterMessageModelToJson(BarterMessageModel instance) =>
    <String, dynamic>{
      'barterMessageId': instance.barterMessageId,
      'usersInvolved': instance.usersInvolved,
      'userOffer': instance.userOffer,
      'userBarter': instance.userBarter,
      'barterItemId': instance.barterItemId,
      'barterOfferItems': instance.barterOfferItems,
      'isReadLastMessage': instance.isReadLastMessage,
      'userLastMessageSender': instance.userLastMessageSender,
      'lastMessageText': instance.lastMessageText,
      'dateCreated': BarterMessageModel._toJsonTimestamp(instance.dateCreated),
      'dateUpdated': BarterMessageModel._toJsonTimestamp(instance.dateUpdated),
    };
