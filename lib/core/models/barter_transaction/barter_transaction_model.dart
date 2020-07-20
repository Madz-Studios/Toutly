import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'barter_transaction_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BarterTransactionModel {
  String barterTransactionId;
  String userOffer;
  String userBarter;
  String barterItemId;
  List<String> barterOfferItems;

  BarterTransactionModel({
    this.barterTransactionId,
    this.userOffer,
    this.userBarter,
    this.barterItemId,
    this.barterOfferItems,
  });
}
