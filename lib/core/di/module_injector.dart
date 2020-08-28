import 'package:Toutly/shared/util/validators.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

@module
abstract class InjectableModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @preResolve
  Future<RemoteConfig> get remoteConfig => RemoteConfig.instance;

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage();

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FacebookLogin get facebookLogin => FacebookLogin();

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  GeolocatorPlatform get geoLocator => GeolocatorPlatform.instance;

  @lazySingleton
  Validators get validators => Validators();

  @lazySingleton
  Uuid get uuid => Uuid();
}
