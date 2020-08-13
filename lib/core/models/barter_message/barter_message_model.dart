import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'barter_message_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BarterMessageModel {
  // barter id
  String barterMessageId;
  //User that is offering an item to exchange in a barter item
  String userOffer;
  // User that is bartering the item
  String userBarter;
  // Item that is being bartered
  String barterItemId;
  // Items that are being offered.
  List<String> barterOfferItems;
  // check if the message was read by the user that offered an item/s.
  bool isUserOfferRead;
  // check if the message was read by the user that bartered the item.
  bool isUserBarterRead;
  // last message text
  String lastMessageText;

  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateUpdated;

  BarterMessageModel({
    @required this.barterMessageId,
    @required this.userOffer,
    @required this.userBarter,
    @required this.barterItemId,
    @required this.barterOfferItems,
    @required this.isUserOfferRead,
    @required this.isUserBarterRead,
    @required this.dateCreated,
    @required this.dateUpdated,
    @required this.lastMessageText,
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
