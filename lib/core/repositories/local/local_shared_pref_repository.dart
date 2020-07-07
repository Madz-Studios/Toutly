import 'package:Toutly/shared/constants/app_shared_pref_user_keys.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalSharedPrefRepository {
  void persistCurrentUserGeoLocation(double latitude, double longitude);

  double getCurrentUserGeoLocationLatitude();

  double getCurrentUserGeoLocationLongitude();

  void deleteAllLocalSavedData();
}

@Injectable(as: LocalSharedPrefRepository)
@lazySingleton
class LocalUserRepositoryImpl implements LocalSharedPrefRepository {
  LocalUserRepositoryImpl({@required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  void persistCurrentUserGeoLocation(double latitude, double longitude) async {
    await sharedPreferences.setDouble(
        AppSharedPrefUserKeys.USER_GEOLOCATION_LATITUDE_KEY, latitude);

    await sharedPreferences.setDouble(
        AppSharedPrefUserKeys.USER_GEOLOCATION_LONGITUDE_KEY, longitude);
  }

  @override
  double getCurrentUserGeoLocationLatitude() {
    return sharedPreferences
        .getDouble(AppSharedPrefUserKeys.USER_GEOLOCATION_LATITUDE_KEY);
  }

  @override
  double getCurrentUserGeoLocationLongitude() {
    return sharedPreferences
        .getDouble(AppSharedPrefUserKeys.USER_GEOLOCATION_LONGITUDE_KEY);
  }

  @override
  void deleteAllLocalSavedData() async {
    sharedPreferences
        .remove(AppSharedPrefUserKeys.USER_GEOLOCATION_LATITUDE_KEY);
    sharedPreferences
        .remove(AppSharedPrefUserKeys.USER_GEOLOCATION_LONGITUDE_KEY);
  }
}
