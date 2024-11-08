import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

import 'data/repository/authentication/authentication_repository.dart';
import 'firebase_options.dart';

/// - Entry Point of the Flutter App
Future<void> main() async {

  // Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// - GetX Local Storage
  await GetStorage.init();

  /// - Await Splash until other items Load
  FlutterNativeSplash.preserve(widgetsBinding:widgetsBinding);

  /// - Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
        (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  // Local all the Material Design / Theme / Localization / Bindings
  runApp(const App());
}