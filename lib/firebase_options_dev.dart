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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA-A7FgWgfE496x_ekOcNRMQF24glkWbDo',
    appId: '1:426935731950:web:83273aadce8740c5f615ff',
    messagingSenderId: '426935731950',
    projectId: 'ddd-example-dev',
    authDomain: 'ddd-example-dev.firebaseapp.com',
    storageBucket: 'ddd-example-dev.appspot.com',
    measurementId: 'G-TP77M7BXN6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEDKBc5drsnTxyypJU1ieoawLvOHiA4go',
    appId: '1:426935731950:android:551fd15f44f93b7ff615ff',
    messagingSenderId: '426935731950',
    projectId: 'ddd-example-dev',
    storageBucket: 'ddd-example-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACckR8NRMq69kn1Ds4Bb-DEF4bD4aQJac',
    appId: '1:426935731950:ios:508d1d5d25fc0758f615ff',
    messagingSenderId: '426935731950',
    projectId: 'ddd-example-dev',
    storageBucket: 'ddd-example-dev.appspot.com',
    iosClientId: '426935731950-iotg8jnr8q737j98tqal6fbtqm79k4l4.apps.googleusercontent.com',
    iosBundleId: 'com.KinKaze.SampleApp',
  );
}
