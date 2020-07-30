import 'dart:core';

import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'barter_transaction_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BarterTransactionModel {
  String barterTransactionId;
  String userOffer; //User that is offering an item to exchange in a barter item
  String userBarter; // User that is bartering the item
  String barterItemId; // Item that is being bartered
  List<String> barterOfferItems; // Items that are being offered.

  BarterTransactionModel({
    @required this.barterTransactionId,
    @required this.userOffer,
    @required this.userBarter,
    @required this.barterItemId,
    @required this.barterOfferItems,
  });

  factory BarterTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$BarterTransactionModelFromJson(json);
  Map<String, dynamic> toJson() => _$BarterTransactionModelToJson(this);
}
