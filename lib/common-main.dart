import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/di/injector.dart';
import 'simple_bloc_delegate.dart';

void commonMain(String env) async {
  /// Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();

  /// Register all the models and services before the app starts
  /// Important!!!! use await keyword for configureDependencies();
  await configureDependencies();

  ///To initialize FlutterFire, call the initializeApp method on the Firebase class:
  ///
  await Firebase.initializeApp();

  Bloc.observer = SimpleBlocDelegate();

  debugPrint('Environment =  $env');

  /// Google fonts license
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  /// Crashlytics Configuration START
  /// Set `enableInDevMode` to true to see reports while in debug mode
  /// This is only to be used for confirming that reports are being
  /// submitted as expected. It is not intended to be used for everyday
  /// development.
  Crashlytics.instance.enableInDevMode = true;

  /// Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  /// Crashlytics Configuration END

  /// Local Firestore Emulator setup START
//  await Firestore.instance
//      .settings(host: "49.145.100.233:8080", sslEnabled: false);

  /// Local Firestore Emulator setup END

  //hide top status bar
//  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  runApp(App(
    env: env,
  ));
}
