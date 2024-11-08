// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyChOOMuxSJKO0qH3KcNt6Plkl69qmVVaQA',
    appId: '1:131963267937:web:f79eb1d0549229d8a2b320',
    messagingSenderId: '131963267937',
    projectId: 'commercestore334',
    authDomain: 'commercestore334.firebaseapp.com',
    storageBucket: 'commercestore334.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgIkgl5txF35-GaEOx55bpTP_49tsNrIo',
    appId: '1:131963267937:android:a2aaeb5f26fc65a5a2b320',
    messagingSenderId: '131963267937',
    projectId: 'commercestore334',
    storageBucket: 'commercestore334.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkj0cOiBdi0dkc_oLiZ0drMh1oCXpg61g',
    appId: '1:131963267937:ios:1d973bcf3f55c5d0a2b320',
    messagingSenderId: '131963267937',
    projectId: 'commercestore334',
    storageBucket: 'commercestore334.firebasestorage.app',
    iosClientId: '131963267937-c4v61i7flvp0j72nqfisl7lp4len44tr.apps.googleusercontent.com',
    iosBundleId: 'com.example.commerceStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkj0cOiBdi0dkc_oLiZ0drMh1oCXpg61g',
    appId: '1:131963267937:ios:1d973bcf3f55c5d0a2b320',
    messagingSenderId: '131963267937',
    projectId: 'commercestore334',
    storageBucket: 'commercestore334.firebasestorage.app',
    iosClientId: '131963267937-c4v61i7flvp0j72nqfisl7lp4len44tr.apps.googleusercontent.com',
    iosBundleId: 'com.example.commerceStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyChOOMuxSJKO0qH3KcNt6Plkl69qmVVaQA',
    appId: '1:131963267937:web:a2c31c39a1e01bc0a2b320',
    messagingSenderId: '131963267937',
    projectId: 'commercestore334',
    authDomain: 'commercestore334.firebaseapp.com',
    storageBucket: 'commercestore334.firebasestorage.app',
  );

}