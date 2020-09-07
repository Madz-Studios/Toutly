import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fcm_token_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FcmTokenModel {
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime dateCreated;
  String platform;
  String token;

  FcmTokenModel({
    this.dateCreated,
    this.platform,
    this.token,
  });

  factory FcmTokenModel.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenModelFromJson(json);

  Map<String, dynamic> toJson() => _$FcmTokenModelToJson(this);

  static DateTime _fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  static Timestamp _toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);
}
