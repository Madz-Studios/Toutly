import 'package:cloud_firestore/cloud_firestore.dart';

class JsonUtil {
  static DateTime fromJsonTimestamp(Timestamp timestamp) => timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);

  static Timestamp toJsonTimestamp(DateTime time) =>
      time == null ? null : Timestamp.fromDate(time);

  static GeoPoint fromJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }

  static GeoPoint toJsonGeoPoint(GeoPoint geoPoint) {
    return geoPoint;
  }
}
