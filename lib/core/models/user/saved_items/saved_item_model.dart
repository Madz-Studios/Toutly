import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'saved_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SavedItemModel {
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;
  String itemId;

  SavedItemModel({
    this.itemId,
  });

  factory SavedItemModel.fromJson(Map<String, dynamic> json) =>
      _$SavedItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$SavedItemModelToJson(this);

  static DateTime _fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  static Timestamp _toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);
}
