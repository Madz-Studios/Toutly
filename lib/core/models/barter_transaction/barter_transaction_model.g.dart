// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barter_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarterTransactionModel _$BarterTransactionModelFromJson(
    Map<String, dynamic> json) {
  return BarterTransactionModel(
    barterTransactionId: json['barterTransactionId'] as String,
    userOffer: json['userOffer'] as String,
    userBarter: json['userBarter'] as String,
    barterItemId: json['barterItemId'] as String,
    barterOfferItems:
        (json['barterOfferItems'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$BarterTransactionModelToJson(
        BarterTransactionModel instance) =>
    <String, dynamic>{
      'barterTransactionId': instance.barterTransactionId,
      'userOffer': instance.userOffer,
      'userBarter': instance.userBarter,
      'barterItemId': instance.barterItemId,
      'barterOfferItems': instance.barterOfferItems,
    };
