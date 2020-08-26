import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'barter_conversation_text_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BarterConversationTextModel {
  String id;
  String barterMessageId;
  String userId;
  String text;

  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;

  BarterConversationTextModel({
    this.id,
    this.barterMessageId,
    this.userId,
    this.text,
    this.dateCreated,
  });

  static DateTime _fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  static Timestamp _toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);

  factory BarterConversationTextModel.fromJson(Map<String, dynamic> json) =>
      _$BarterConversationTextModelFromJson(json);
  Map<String, dynamic> toJson() => _$BarterConversationTextModelToJson(this);
}
