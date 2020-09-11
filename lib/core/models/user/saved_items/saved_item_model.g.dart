// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedItemModel _$SavedItemModelFromJson(Map<String, dynamic> json) {
  return SavedItemModel(
    itemId: json['itemId'] as String,
  )..dateCreated =
      SavedItemModel._fromJsonTimestamp(json['dateCreated'] as Timestamp);
}

Map<String, dynamic> _$SavedItemModelToJson(SavedItemModel instance) =>
    <String, dynamic>{
      'dateCreated': SavedItemModel._toJsonTimestamp(instance.dateCreated),
      'itemId': instance.itemId,
    };
