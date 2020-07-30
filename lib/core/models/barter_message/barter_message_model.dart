import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'barter_message_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BarterMessageModel {
  String barterTransactionId;
  String userId;
  String message;

  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;

  BarterMessageModel({
    this.barterTransactionId,
    this.userId,
    this.message,
    this.dateCreated,
  });

  static DateTime _fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  static Timestamp _toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);

  factory BarterMessageModel.fromJson(Map<String, dynamic> json) =>
      _$BarterMessageModelFromJson(json);
  Map<String, dynamic> toJson() => _$BarterMessageModelToJson(this);
}
