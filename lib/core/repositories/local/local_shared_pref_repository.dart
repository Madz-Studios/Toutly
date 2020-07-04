import 'package:Toutly/shared/constants/app_shared_pref_user_keys.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalSharedPrefRepository {
  Future<void> persistCurrentUserId(String userId);

  Future<void> persistCurrentUserEmail(String email);

  Future<void> persistCurrentUserGeoLocation(double latitude, double longitude);

  Future<void> deleteAllLocalSavedData();
}

@Injectable(as: LocalSharedPrefRepository)
@lazySingleton
class LocalUserRepositoryImpl implements LocalSharedPrefRepository {
  LocalUserRepositoryImpl({@required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Future<void> persistCurrentUserGeoLocation(
      double latitude, double longitude) async {
    await sharedPreferences.setDouble(
        AppSharedPrefUserKeys.USER_GEOLOCATION_LATITUDE_KEY, latitude);

    await sharedPreferences.setDouble(
        AppSharedPrefUserKeys.USER_GEOLOCATION_LONGITUDE_KEY, longitude);
  }

  @override
  Future<void> persistCurrentUserEmail(String email) async {
    await sharedPreferences.setString(
        AppSharedPrefUserKeys.USER_EMAIL_KEY, email);
  }

  @override
  Future<void> persistCurrentUserId(String userId) async {
    await sharedPreferences.setString(
        AppSharedPrefUserKeys.USER_ID_KEY, userId);
  }

  @override
  Future<void> deleteAllLocalSavedData() async {
    sharedPreferences.remove(AppSharedPrefUserKeys.USER_ID_KEY);
    sharedPreferences.remove(AppSharedPrefUserKeys.USER_EMAIL_KEY);
    sharedPreferences
        .remove(AppSharedPrefUserKeys.USER_GEOLOCATION_LATITUDE_KEY);
    sharedPreferences
        .remove(AppSharedPrefUserKeys.USER_GEOLOCATION_LONGITUDE_KEY);
  }
}
