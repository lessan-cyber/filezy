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

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCjG8QQEIiWhlzyTlUfBAarS8QftyU57-U',
    appId: '1:736966459405:web:c48476e6576501e0f11544',
    messagingSenderId: '736966459405',
    projectId: 'filezy-cdc87',
    authDomain: 'filezy-cdc87.firebaseapp.com',
    storageBucket: 'filezy-cdc87.appspot.com',
    measurementId: 'G-KXC0F3LK16',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOkwOAgX9kgvIa41iDxRit-wmsIMFvRe8',
    appId: '1:736966459405:ios:9b7001564a1f9c29f11544',
    messagingSenderId: '736966459405',
    projectId: 'filezy-cdc87',
    storageBucket: 'filezy-cdc87.appspot.com',
    iosBundleId: 'com.example.filezy',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOkwOAgX9kgvIa41iDxRit-wmsIMFvRe8',
    appId: '1:736966459405:ios:9b7001564a1f9c29f11544',
    messagingSenderId: '736966459405',
    projectId: 'filezy-cdc87',
    storageBucket: 'filezy-cdc87.appspot.com',
    iosBundleId: 'com.example.filezy',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLDOtrQPPb_2yFZWnS_OdeU7-5_FpKWsI',
    appId: '1:736966459405:android:325f95828c204453f11544',
    messagingSenderId: '736966459405',
    projectId: 'filezy-cdc87',
    storageBucket: 'filezy-cdc87.appspot.com',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCjG8QQEIiWhlzyTlUfBAarS8QftyU57-U',
    appId: '1:736966459405:web:c48476e6576501e0f11544',
    messagingSenderId: '736966459405',
    projectId: 'filezy-cdc87',
    authDomain: 'filezy-cdc87.firebaseapp.com',
    storageBucket: 'filezy-cdc87.appspot.com',
    measurementId: 'G-KXC0F3LK16',
  );

}