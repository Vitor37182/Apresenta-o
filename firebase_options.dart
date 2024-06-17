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
    apiKey: 'AIzaSyALoU55DtUunPh9VcTR4EQty3skXPGD7cI',
    appId: '1:625089922743:web:17ce4625f60a8253a12f32',
    messagingSenderId: '625089922743',
    projectId: 'atividade-fab71',
    authDomain: 'atividade-fab71.firebaseapp.com',
    databaseURL: 'https://atividade-fab71-default-rtdb.firebaseio.com',
    storageBucket: 'atividade-fab71.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpMeGej_IUcowteIiaT-oIfmBpTIOzHaM',
    appId: '1:625089922743:ios:e65c72de2e8f2c6da12f32',
    messagingSenderId: '625089922743',
    projectId: 'atividade-fab71',
    databaseURL: 'https://atividade-fab71-default-rtdb.firebaseio.com',
    storageBucket: 'atividade-fab71.appspot.com',
    iosBundleId: 'com.example.atividade',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpMeGej_IUcowteIiaT-oIfmBpTIOzHaM',
    appId: '1:625089922743:ios:e65c72de2e8f2c6da12f32',
    messagingSenderId: '625089922743',
    projectId: 'atividade-fab71',
    databaseURL: 'https://atividade-fab71-default-rtdb.firebaseio.com',
    storageBucket: 'atividade-fab71.appspot.com',
    iosBundleId: 'com.example.atividade',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyALoU55DtUunPh9VcTR4EQty3skXPGD7cI',
    appId: '1:625089922743:web:bd92140b0b51f656a12f32',
    messagingSenderId: '625089922743',
    projectId: 'atividade-fab71',
    authDomain: 'atividade-fab71.firebaseapp.com',
    databaseURL: 'https://atividade-fab71-default-rtdb.firebaseio.com',
    storageBucket: 'atividade-fab71.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAedQTcoN4lUMXYCYyf5xqJhfGFLkcXKsg',
    appId: '1:625089922743:android:3b3d4ffc524dfa6fa12f32',
    messagingSenderId: '625089922743',
    projectId: 'atividade-fab71',
    databaseURL: 'https://atividade-fab71-default-rtdb.firebaseio.com',
    storageBucket: 'atividade-fab71.appspot.com',
  );

}