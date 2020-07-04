import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  String _currentAddress = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Inbox Screen'),
                Text(_currentAddress != null ? _currentAddress : 'Unknown'),
                Placeholder(),
                RaisedButton(
                  child: Text('Open Location Map'),
                  onPressed: () async {
                    print('Open Location Map');
                    _getCurrentLocation(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getCurrentLocation(BuildContext context) async {
    try {
      RemoteConfig remoteConfig = await RemoteConfig.instance;
      await remoteConfig.fetch();
      await remoteConfig.activateFetched();

      String apiKey;

      if (Platform.isIOS) {
        apiKey = remoteConfig.getString('ios_gcp_api_key');
      } else {
        apiKey = remoteConfig.getString('android_gcp_api_key');
      }

      print('apiKey = $apiKey');

      Position position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      print('latitude ${position.latitude}');
      print('longitude ${position.longitude}');

      LocationResult result = await showLocationPicker(
        context,
        apiKey,
        initialCenter: LatLng(position.latitude, position.longitude),
        myLocationButtonEnabled: true,
        hintText: 'Location',
      );

      print('result $result');

      setState(() {
        _currentAddress = "${result.address}";
      });
    } on PlatformException catch (platFormException) {
      if (platFormException.code == 'PERMISSION_DENIED') {
        AppSettings.openLocationSettings();
      } else {
        print('platFormException code ${platFormException.code}');
        print('platFormException message ${platFormException.message}');
      }
    }
  }
}
