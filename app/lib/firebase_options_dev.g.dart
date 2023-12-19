// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
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
    apiKey: 'AIzaSyBqC6TzoF4xtsQeaCPduIR0J0ygja8Y0_8',
    appId: '1:366164701221:web:5fe0bac2db3098c6bfcfcc',
    messagingSenderId: '366164701221',
    projectId: 'sharezone-debug',
    authDomain: 'sharezone-debug.firebaseapp.com',
    databaseURL: 'https://sharezone-debug.firebaseio.com',
    storageBucket: 'sharezone-debug.appspot.com',
    measurementId: 'G-4Z0HJ3D9Q6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACrc-_Bf1cuaa5LFMa8yAiyGXyF12eRsQ',
    appId: '1:366164701221:android:f0a3b3b856fd1383',
    messagingSenderId: '366164701221',
    projectId: 'sharezone-debug',
    databaseURL: 'https://sharezone-debug.firebaseio.com',
    storageBucket: 'sharezone-debug.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBS3rxcFvmskFvgynGhG4hfeOUZwXrZOro',
    appId: '1:366164701221:ios:3ff9b2cb1c2a5a31',
    messagingSenderId: '366164701221',
    projectId: 'sharezone-debug',
    databaseURL: 'https://sharezone-debug.firebaseio.com',
    storageBucket: 'sharezone-debug.appspot.com',
    androidClientId:
        '366164701221-9e41nmj0vhiqhgdpe2qebfdp91pht6ln.apps.googleusercontent.com',
    iosClientId:
        '366164701221-obqtov9nvdds889ens9iu3fli9hltll7.apps.googleusercontent.com',
    iosBundleId: 'de.codingbrain.sharezone.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBS3rxcFvmskFvgynGhG4hfeOUZwXrZOro',
    appId: '1:366164701221:ios:785f107df46335d5bfcfcc',
    messagingSenderId: '366164701221',
    projectId: 'sharezone-debug',
    databaseURL: 'https://sharezone-debug.firebaseio.com',
    storageBucket: 'sharezone-debug.appspot.com',
    androidClientId:
        '366164701221-9e41nmj0vhiqhgdpe2qebfdp91pht6ln.apps.googleusercontent.com',
    iosClientId:
        '366164701221-fdv476f10fl969nd65dv97tfajqb9jr1.apps.googleusercontent.com',
    iosBundleId: 'de.codingbrain.sharezone.app.dev',
  );
}
