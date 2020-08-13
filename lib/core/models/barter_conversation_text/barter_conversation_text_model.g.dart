// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barter_conversation_text_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarterConversationTextModel _$BarterConversationTextModelFromJson(
    Map<String, dynamic> json) {
  return BarterConversationTextModel(
    barterMessageId: json['barterMessageId'] as String,
    userId: json['userId'] as String,
    text: json['text'] as String,
    dateCreated: BarterConversationTextModel._fromJsonTimestamp(
        json['dateCreated'] as Timestamp),
  );
}

Map<String, dynamic> _$BarterConversationTextModelToJson(
        BarterConversationTextModel instance) =>
    <String, dynamic>{
      'barterMessageId': instance.barterMessageId,
      'userId': instance.userId,
      'text': instance.text,
      'dateCreated':
          BarterConversationTextModel._toJsonTimestamp(instance.dateCreated),
    };
