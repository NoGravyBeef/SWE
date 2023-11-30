// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDA4q69Uxiii_wEiYdZaO45bI5r4Zl3N_I',
    appId: '1:204448825215:web:68c7e1149a59430023a44a',
    messagingSenderId: '204448825215',
    projectId: 'calendar-3a1df',
    authDomain: 'calendar-3a1df.firebaseapp.com',
    storageBucket: 'calendar-3a1df.appspot.com',
    measurementId: 'G-VEPLP4Z7MD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP-FV02y8Yv_QH5zvuWWws7aSgKQnwxJ8',
    appId: '1:204448825215:android:20578fca44ae245923a44a',
    messagingSenderId: '204448825215',
    projectId: 'calendar-3a1df',
    storageBucket: 'calendar-3a1df.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANPgvVE6QLDb-8A2chhmdyVCVf2anOZBg',
    appId: '1:204448825215:ios:3010ec0106d0080f23a44a',
    messagingSenderId: '204448825215',
    projectId: 'calendar-3a1df',
    storageBucket: 'calendar-3a1df.appspot.com',
    iosBundleId: 'com.example.seproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANPgvVE6QLDb-8A2chhmdyVCVf2anOZBg',
    appId: '1:204448825215:ios:4f5a736cac26423a23a44a',
    messagingSenderId: '204448825215',
    projectId: 'calendar-3a1df',
    storageBucket: 'calendar-3a1df.appspot.com',
    iosBundleId: 'com.example.seproject.RunnerTests',
  );
}