import 'dart:ui';

import 'package:incontrol_flutter/core/presentation/cubit/app_observer.dart';
import 'package:incontrol_flutter/core/presentation/widgets/app.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "Developer",
    options: DevFirebaseOptions.currentPlatform,
  );

  await configureDependencies();

// Ideal time to initialize
  Bloc.observer = AppObserver();
  final pref = await SharedPreferences.getInstance();
  final darkTheme = pref.getBool('darkTheme');
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
  );
  const _secureStorage = const FlutterSecureStorage();

  var readData = await _secureStorage.read(
    key: 'idToken',
  );

  var role = await _secureStorage.read(key: "idRole");

  runApp(
    App(
      darkTheme: darkTheme ?? false,
      isAuthenticated: readData != null,
      role:role
    ),
  );
}
