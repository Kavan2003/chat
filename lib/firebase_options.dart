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
    apiKey: 'AIzaSyAOvLguHa0NhLeCbmBwFk9MfIlpe27cNkc',
    appId: '1:676149803351:web:9f97b3ef69d64da0de2612',
    messagingSenderId: '676149803351',
    projectId: 'chat-400e0',
    authDomain: 'chat-400e0.firebaseapp.com',
    storageBucket: 'chat-400e0.appspot.com',
    measurementId: 'G-3RNR7H8HX7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI7u7ySW_xn5O_v58OUCDRyisIkI-TQD4',
    appId: '1:676149803351:android:6259f8b12cbdd711de2612',
    messagingSenderId: '676149803351',
    projectId: 'chat-400e0',
    storageBucket: 'chat-400e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOGyGUcxOWdSzAf2UkcUGGo7s4Q8v57rM',
    appId: '1:676149803351:ios:5d09d72435ac9adcde2612',
    messagingSenderId: '676149803351',
    projectId: 'chat-400e0',
    storageBucket: 'chat-400e0.appspot.com',
    iosClientId: '676149803351-24uuu4vojr44dh9t40769u7e89rifems.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOGyGUcxOWdSzAf2UkcUGGo7s4Q8v57rM',
    appId: '1:676149803351:ios:a1b281166b07c242de2612',
    messagingSenderId: '676149803351',
    projectId: 'chat-400e0',
    storageBucket: 'chat-400e0.appspot.com',
    iosClientId: '676149803351-oc5hrrdg4fcb9sk8u2cursierbe1h3hf.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat.RunnerTests',
  );
}