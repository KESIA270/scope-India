
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
    apiKey: 'AIzaSyC4BdVX15TKIQCAxJ1-yAiuGTIvxfLKsl0',
    appId: '1:187647734781:web:f3942c509cab6df13ddf94',
    messagingSenderId: '187647734781',
    projectId: 'finalproject-4237a',
    authDomain: 'finalproject-4237a.firebaseapp.com',
    storageBucket: 'finalproject-4237a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7uCwkMjFbOArmUSFn4DWFum3iCvGpLbs',
    appId: '1:187647734781:android:9b26bef6833236123ddf94',
    messagingSenderId: '187647734781',
    projectId: 'finalproject-4237a',
    storageBucket: 'finalproject-4237a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfncYObeCmFbdpD0IlzH3MeeLzJSfYJcY',
    appId: '1:187647734781:ios:cc3c2d71a351ebfd3ddf94',
    messagingSenderId: '187647734781',
    projectId: 'finalproject-4237a',
    storageBucket: 'finalproject-4237a.appspot.com',
    iosBundleId: 'com.example.scopeindiamain',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfncYObeCmFbdpD0IlzH3MeeLzJSfYJcY',
    appId: '1:187647734781:ios:cc3c2d71a351ebfd3ddf94',
    messagingSenderId: '187647734781',
    projectId: 'finalproject-4237a',
    storageBucket: 'finalproject-4237a.appspot.com',
    iosBundleId: 'com.example.scopeindiamain',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC4BdVX15TKIQCAxJ1-yAiuGTIvxfLKsl0',
    appId: '1:187647734781:web:cb912eddbcf8f5503ddf94',
    messagingSenderId: '187647734781',
    projectId: 'finalproject-4237a',
    authDomain: 'finalproject-4237a.firebaseapp.com',
    storageBucket: 'finalproject-4237a.appspot.com',
  );

}